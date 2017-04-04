#!/bin/bash
nohup rdesktop -f -b -d YOURDOMAIN -k en-gb -u "" -x 0x81 192.168.1.11 >/dev/null 2>&1 &
# I use this file for testing, just replace the ip with yours and type in a domain if you have one. If you don't use a domain then just remove -d and YOURDOMAIN
