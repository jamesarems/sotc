#!/bin/bash
##This script will apply rules to plans
DATE=`date +%F_%R`
PATH=`pwd`
#IP1=`/usr/bin/cat /root/VPN-SERVER-SCRIPTS/plans/a1.ip`
#IP2=`/usr/bin/cat /root/VPN-SERVER-SCRIPTS/plans/a2.ip`
#IP3=`/usr/bin/cat /root/VPN-SERVER-SCRIPTS/plans/a3.ip`

for ip in `/usr/bin/cat /root/VPN-SERVER-SCRIPTS/plans/a3.ip`
        do
/bin/bash /root/VPN-SERVER-SCRIPTS/rate_limit.sh set3 $ip
echo "$ip has been added to A3 Tier"
        done
