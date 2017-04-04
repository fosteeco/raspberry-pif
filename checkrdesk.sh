#!/bin/bash
# Loop without an end
while : 
do
# For details see man of rdesktop
rdesktop -f -b -k en-us -u "" -x 0x81 192.168.1.11
# If you need to sign in with a domain add -d YOURDOMAIN to the command above
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
