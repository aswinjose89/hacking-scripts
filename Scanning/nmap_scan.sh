#!/bin/bash
for i in $(seq 1 1000)
do
	nmap   192.168.1.40-254      &	
	nmap  -p0  192.168.1.40-254    &        #open hosts
	nmap  -sn  192.168.1.40-254   &        #scan mac addresses
	nmap  -sP  192.168.35.40-254   &        #scan pings icmp
	nmap  -sU  192.168.35.40-254   &        #scan udp ports
	nmap  -sS  192.168.35.40-254   &        #scan SYN TCP
done

