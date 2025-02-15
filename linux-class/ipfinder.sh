#!/bin/bash
#Simple IP Finder
# Create by ALIF SAKIB

for url in $(cat site.txt)
do
 echo "$url IP address is : " $(ping -c 2 $url | grep "64 bytes from" | awk 'NR == 1 {print $5}' |tr -d ':')
done
