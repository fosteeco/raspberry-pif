#!/bin/bash
#I made this and I had issues when the rdc was rebooted so I wouldn't recommend using this but you could try to figure out how to make it work correctly if you wish
while : 
do 
new=$(netstat -natp | grep -c 192.168.1.11:3389)
echo $new
if [ $new -eq 0 ]
then 	
  sh /home/pi/autologin.sh
fi 
done
