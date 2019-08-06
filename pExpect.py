#!/usr/bin/python3
import pexpect
import logging
import sys 
import re
import ipaddress
import time 

miner_ip = sys.argv[1]
logging.basicConfig(
    filename="/var/log/pduExpect/pduExpectLogger.log",
    level=logging.DEBUG,
    #format="%(asctime)s:%(levelname)s:%(message)s"
    format="%(asctime)s:%(levelname)s-%(filename)s:Func:%(funcName)s:Line:%(lineno)d - %(message)s"
    )

if len(sys.argv) < 2:
    logging.debug('Script Exited On Run, No Arguments Were Supplied.')
    print('You Must Supply An Ip Address As An Argument! EXITING...')
    sys.exit(1)
else:
    logging.debug('Script Called With Args: ' + str(miner_ip))

if '10.3' in miner_ip:
    print('We Dont Do 10.3 IPs Around Here. Exiting...')
    sys.exit(1)

outlet_map = {
    '1' : '1',
    '2' : '1',
    '3' : '1',
    '4' : '2',
    '5' : '2',
    '6' : '1',
    '7' : '1',
    '8' : '2',
    '9' : '2',
    '10' : '2',
    '11' : '1',
    '12' : '1',
    '13' : '1',
    '14' : '2',
    '15' : '2',
    '16' : '1',
    '17' : '1',
    '18' : '2',
    '19' : '2',
    '20' : '2',
    '21' : '1',
    '22' : '1',
    '23' : '2',
    '24' : '2'
}    

def rebooter(ip,outlet):
    print('rebooter function called with ip: ' + ip + ' and outlet: ' + outlet)
    child = pexpect.spawn ('telnet ' + ip)
    time.sleep(1)
    child.expect ('Username:')
    child.sendline ('admn')
    time.sleep(1)
    child.expect ('Password:')
    child.sendline ('admn')
    time.sleep(1)
    child.expect ('Switched CDU:')
    child.sendline ('reboot')
    time.sleep(1)
    child.expect('Outlet or Group Name:')
    child.sendline (outlet)
    time.sleep(3)
    print('rebooter done')

def do_stuff(input_ip):
    print('got to main function. ip passed was: ' + input_ip)
    try:
        octet = input_ip.split('.')
        octet_one = octet[0]
        octet_two = octet[1]
        octet_three = octet[2]
        octet_four = octet[3]
        pdu_ip = f"{octet_one}.{octet_two}{octet_two}.{octet_three}.{outlet_map[octet_four]}"
        logging.debug(f"Reboot Function Called On: {input_ip}  Sending Request To PDU: {pdu_ip} Outlet: {octet_four}")
        print((f"Reboot Function Called On: {input_ip}  Sending Request To PDU: {pdu_ip} Outlet: {octet_four}"))
        print('octet_four is: ' + octet_four)
        #rebooter(pdu_ip,octet_four)
    except KeyError as e:
        print('Racks Go Up To 24. Select A Miner In 1-24 Range. Exiting...')
        logging.debug('out of range' + str(e))
    except IndexError as e:
        print('Got An Issue: ' + str(e))
        logging.debug('Something Went Wrong: ' + str(e))

do_stuff(miner_ip)
print('done doing stuff')
