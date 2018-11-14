#!/bin/bash
miner=$1
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

declare -A outletMap
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

cutMiner=$(echo $miner |sed 's/\./ /g')
octet1=$(echo $cutMiner |awk '{print $1;}')
octet2=$(echo $cutMiner |awk '{print $2;}')
octet3=$(echo $cutMiner |awk '{print $3;}')
octet4=$(echo $cutMiner |awk '{print $4;}')
newOctet=${outletMap[$octet4]}
pduIp=$(echo "$octet1.$octet2$octet2.$octet3.$newOctet")
echo "$pduIp"
if rebooter $pduIp $octet4; then
	echo "$miner WAS REBOOTED!"
else
	echo "Something Went Wrong, Miner Was NOT Rebooted"
fi
exit 0




