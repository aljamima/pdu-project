my own auto reboot script. ssh into miner 1 by 1, hashrate is less tahn 10 reboot 

outctrl.html:
curl 'http://10.11.1.2/outctrl.html' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://10.11.1.2/outctrl.html' -H 'Cookie: C5=1085377743; C0=FF00FF00FF0000000000000000000000' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed


ouctrl2:
curl 'http://10.11.1.2/Forms/outctrl_2' -H 'Cookie: C5=1085377743; C0=FF00FF00FF0000000000000000000000' -H 'Origin: http://10.11.1.2' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.2/outctrl.html' -H 'Connection: keep-alive' --data 'GlobalAction=3' --compressed


ssh -o HostKeyAlgorithms=ssh-dss -o KexAlgorithms=diffie-hellman-group1-sha1 admn@10.11.1.2 "curl 'http://10.11.1.2/outctrl.html' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://10.11.1.2/outctrl.html' -H 'Cookie: C5=1085377743; C0=FF00FF00FF0000000000000000000000' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed"


ssh -o HostKeyAlgorithms=ssh-dss -o KexAlgorithms=diffie-hellman-group1-sha1 admn@10.11.1.2 "curl 'http://10.11.1.2/Forms/outctrl_2' -H 'Cookie: C5=1085377743; C0=FF00FF00FF0000000000000000000000' -H 'Origin: http://10.11.1.2' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.2/outctrl.html' -H 'Connection: keep-alive' --data 'GlobalAction=3' --compressed"



ssh -o StrictHostKeyChecking=no -o HostKeyAlgorithms=ssh-dss -o KexAlgorithms=diffie-hellman-group1-sha1 admn@10.11.1.2 /bin/bash -i

echo -ne "ssh -o HostKeyAlgorithms=ssh-dss -o KexAlgorithms=diffie-hellman-group1-sha1 admn@10.11.1.2 "curl 'http://10.11.1.2/outctrl.html' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://10.11.1.2/outctrl.html' -H 'Cookie: C5=1085377743; C0=FF00FF00FF0000000000000000000000' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed" | ssh -o StrictHostKeyChecking=no -o HostKeyAlgorithms=ssh-dss -o KexAlgorithms=diffie-hellman-group1-sha1 admn@10.11.1.2



set all outlet names for rack 1 in c1:
outlets_1
curl 'http://10.11.1.1/Forms/outlets_1' -H 'Cookie: C0=-- None --; C5=1085377743' -H 'Origin: http://10.11.1.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.1/outlets.html' -H 'Connection: keep-alive' --data 'Seq_Interval=2&Rbt_Delay=15' --compressed
outlets.html
curl 'http://10.11.1.1/outlets.html' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://10.11.1.1/outlets.html' -H 'Cookie: C0=-- None --; C5=1085377743' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed


then single outlet curl request set outlet 2 as 'empty1':
outedit_1
curl 'http://10.11.1.1/Forms/outedit_1?2' -H 'Cookie: C0=-- None --; C5=1085377743' -H 'Origin: http://10.11.1.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.1/outedit.html?2' -H 'Connection: keep-alive' --data 'FormButton=Apply&Outlet_Name=empty1&WakeupStateEdit%3F2=0&PostOn_Delay=0' --compressed
outlets.html


edit outlet 4 as empty2:
curl 'http://10.11.1.1/Forms/outedit_1?4' -H 'Cookie: C0=-- None --; C5=1085377743' -H 'Origin: http://10.11.1.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.1/outedit.html?4' -H 'Connection: keep-alive' --data 'FormButton=Apply&Outlet_Name=empty2&WakeupStateEdit%3F4=0&PostOn_Delay=0' --compressed


feed this curl some vars... $outletNum and a $newName
curl 'http://10.11.1.1/Forms/outedit_1?$outletNum' -H 'Cookie: C0=-- None --; C5=1085377743' -H 'Origin: http://10.11.1.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.9,es-419;q=0.8,es;q=0.7,ru;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'Authorization: Basic YWRtbjphZG1u' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Cache-Control: max-age=0' -H 'Referer: http://10.11.1.1/outedit.html?$outletNum' -H 'Connection: keep-alive' --data 'FormButton=Apply&Outlet_Name=$newName&WakeupStateEdit%3F4=0&PostOn_Delay=0' --compressed
