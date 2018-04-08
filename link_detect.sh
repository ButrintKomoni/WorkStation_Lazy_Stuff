#!/bin/bash

while true; do 
if /sbin/ethtool enp0s25 | grep -q "Link detected: yes"; then
    echo "Online"
    $(notify-send "The enp0s25 interface is up and running flawlessly!")
else
    echo "Not online"
    echo "The enp0s25 interface went down on :" $(date)". On this hostname :"" @"$(hostname) >> /home/vigil/network_connection/ETHERNET_CABLE_FAILED.log
    $(notify-send "The enp0s25 interface is down! Gawdamn!")
    aplay enp0s25_down.wav
fi
sleep 30s
done
