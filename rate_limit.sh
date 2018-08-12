#!/bin/bash
## Written By : James PS
## Mail Me : info@jamesarems.com
## Git : https://github.com/jamesarems
################################
# Traffic shapping script per IP
if [ "$1" == setup ]; then
	tc qdisc add dev tun0 root handle 1: cbq avpkt 1000 bandwidth 150mbit
	tc class add dev tun0 parent 1: classid 1:1 cbq rate 700kbit allot 1500 prio 5 bounded isolated
	tc class add dev tun0 parent 1: classid 1:2 cbq rate 2000kbit allot 1500 prio 5 bounded isolated
	tc class add dev tun0 parent 1: classid 1:3 cbq rate 20000kbit allot 1500 prio 5 bounded isolated
	echo "Initial Setup Completed"

elif [ "$1" == reset ]; then
	tc qdisc del dev tun0 root
	echo "Traffic Controll has been reset"

elif [ "$1" == set1 ]; then
	/usr/sbin/tc filter add dev tun0 parent 1: protocol ip prio 16 u32 match ip dst $2 flowid 1:1
	#echo "IP $2 has been downgraded"
elif [ "$1" == set2 ]; then
        /usr/sbin/tc filter add dev tun0 parent 1: protocol ip prio 16 u32 match ip dst $2 flowid 1:2
        #echo "IP $2 has been downgraded"
elif [ "$1" == set3 ]; then
        /usr/sbin/tc filter add dev tun0 parent 1: protocol ip prio 16 u32 match ip dst $2 flowid 1:3
        #echo "IP $2 has been downgraded"

else
	echo "Command error"
fi
