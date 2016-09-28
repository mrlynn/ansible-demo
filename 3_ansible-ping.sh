#!/bin/sh
source functions.sh
echo `clear`
echo "${green}$ \c"
typeit "ansible -m ping -i ansible-hosts all"
ansible -m ping -i ansible-hosts all
echo ${reset}
echo "The flag and argument ${red}-m ping${reset} specifies that we want to invoke a module 'ping'"
echo 
echo "The ${red}ping${reset} module simple tests connectivity to a set of hosts"
echo "In this case - we're telling ping to use the ${green}all${reset} group of hosts."
