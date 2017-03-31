#!/bin/bash
# Loop without an end
while : 
do
# For details see man of rdesktop
rdesktop -f -b -d GRIFFASSOC -k en-gb -u "" -x 0x81 rdc275.paperandfilm.com
# After disconnect check for xsession
lxalive=$(ps -ae|grep lxsession);
# Do $lxalive exists?
if [ ! -n "$lxalive" ]; then
# You have to do init 0 with sudo, because you are logged in as user pi
sudo init 0
fi
#EndIf
done
# End Loop
