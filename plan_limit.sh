#!/bin/bash
## GIThub : https://github.com/jamesarems
## Email : info@jamesarems.com
##########################################################
# Execute scripts upon requested by server
/bin/bash /root/VPN-SERVER-SCRIPTS/rate_limit.sh reset
/bin/bash /root/VPN-SERVER-SCRIPTS/rate_limit.sh setup
/bin/bash /root/VPN-SERVER-SCRIPTS/plan_script/a1.sh
/bin/bash /root/VPN-SERVER-SCRIPTS/plan_script/a2.sh
/bin/bash /root/VPN-SERVER-SCRIPTS/plan_script/a3.sh
