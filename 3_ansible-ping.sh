#!/bin/sh
source functions.sh
echo `clear`
title "3 - ${red}Ansible${reset} Modules: Ping"
typeit "ansible -m ping -i ansible-hosts all"
echo ${green}
ansible -m ping -i ansible-hosts all
echo ${reset}
echo "The flag and argument ${red}-m ping${reset} specifies that we want to invoke a module 'ping'"
echo 
echo "The ${red}ping${reset} module simply tests connectivity to a set of hosts"
echo "In this case - we're telling ping to use the ${green}all${reset} group of hosts."
echo
echo "For more information on all of the available modules, see http://docs.ansible.com/modules_by_category.html"
pause
./4_ansible-hosts.sh
