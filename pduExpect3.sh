#!/bin/bash
miner=$1
#echo -e "\e[41;38;5;82m redBgGreenText \e[30;48;5;82m greenBgDarkText \e[0m" ##this line prints first in red second green
function rootCheck {
	if [[ $EUID -ne 0 ]]; then
		echo "This script must be run as root" 
	exit 1
fi
}
function validateIP {
	ip=$1
	if [[ $ip = 10.3.* ]]; then exit 2; fi
	if expr "$ip" : '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$' >/dev/null; then
		for i in 1 2 3 4; do
			if [ $(echo "$ip" | cut -d. -f$i) -gt 255 ]; then
				echo "fail - invalid ip:($ip)"
				exit 1
			fi
		done
	else
		echo "fail - invalid ip:($ip)"
		exit 1
	fi
}
function rebooter { #takes two args, pduIp and outletNum
    outlet=$2
    pduIp=$1
    /usr/bin/expect <<EOD
    spawn telnet $pduIp
    expect "Username:"
    send "admn\r"
    expect "Password:"
    send "admn\r"
    expect "Switched CDU:"
    sleep 1
    send "reboot\r"
    sleep 1
    expect "Outlet or Group Name:"
    send "$outlet\r"
    sleep 5
EOD
}
function setupArrays {
	declare -Ag outletMap
		outletMap[1]=1
		outletMap[2]=1
		outletMap[3]=1
		outletMap[4]=2
		outletMap[5]=2
		outletMap[6]=1
		outletMap[7]=1
		outletMap[8]=2
		outletMap[9]=2
		outletMap[10]=2
		outletMap[11]=1
		outletMap[12]=1
		outletMap[13]=1
		outletMap[14]=2
		outletMap[15]=2
		outletMap[16]=1
		outletMap[17]=1
		outletMap[18]=2
		outletMap[19]=2
		outletMap[20]=2
		outletMap[21]=1
		outletMap[22]=1
		outletMap[23]=2
		outletMap[24]=2
}

if [ -z $1 ]; then
	echo "You MUST Provide An Ip To Reboot"
	exit 1
	elif [ $# -gt 1 ]; then
		echo "You Can Enter ONLY 1 IP!"
		exit 1	
fi

rootCheck
validateIP $miner
setupArrays
cutMiner="$(echo $miner |sed 's/\./ /g')"
octet1="$(echo $cutMiner |awk '{print $1;}')"
octet2="$(echo $cutMiner |awk '{print $2;}')"
octet3="$(echo $cutMiner |awk '{print $3;}')"
octet4="$(echo $cutMiner |awk '{print $4;}')"
newOctet=${outletMap[$octet4]}
pduIp="$octet1.$octet2$octet2.$octet3.$newOctet"
echo "pduIp: $pduIp"
if "rebooter $pduIp $octet4"; then
	echo "$miner WAS REBOOTED!"
else
	echo "Something Went Wrong, Miner Was NOT Rebooted"
	exit 2
fi
pingCount=0
while ! "ping -c 1 $miner 2>/dev/null 1>&2"; do 
	echo "WAITING FOR PING TO RETURN #$pingCount" 
	sleep 3 
	((pingCount++))
	if [ "$pingCount" -ge 10 ]; then
		echo "It Has Been A While And Miner Still Isnt Responding To Ping"
		echo "Would You Like To Try And Reboot Again?"
		read -r -n 1 -p "Yes? Or no? " yn
		case $yn in
		  [YyNn])
		  ;;
		  Yy) exec "$0" "$@"
		  ;;
		  Nn) exit 0
		  ;;
		esac
	fi
done
echo "It Looks Like Ping Is Successful. $miner IS BACK UP!"
exit 0

