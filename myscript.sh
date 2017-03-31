#!/bin/bash
while : 
do 
new=$(netstat -natp | grep -c 192.168.1.11:3389)
echo $new
if [ $new -eq 0 ]
then 	
  sh /home/pi/autologin.sh
fi 
done
