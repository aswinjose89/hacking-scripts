#!/bin/bash

while :
do
	cewl http://192.168.1.195/dvwa/login.php --auth_type Digest --auth_user admin --auth_pass password -v 	
	cewl -d 4  192.168.1.152 
	cewl -d 4  192.168.1.190 
	cewl -d 4  192.168.1.193  -v
	cewl -d 4  192.168.1.195 
	cewl http://192.168.1.152 --auth_type Digest --auth_user admin --auth_pass password -v 
	cewl http://testphp.vulnweb.com/listproducts.php --auth_type 

done


	


