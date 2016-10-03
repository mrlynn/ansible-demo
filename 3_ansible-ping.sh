#!/bin/sh
source functions.sh
echo `clear`
title "3 - ${red}Ansible${reset} Modules: Ping"
echo "${red}Ansible${reset} has many predefined automation components called ${bold}Modules${reset}.  ${bold}Modules${reset} are written to perform specific actions against hosts.  Take the example ${bold}Ping${reset}.  This is a basic module that simply tests connectivity to a given group (or all) of the servers in your inventory.\n"
echo "Let's look at an example:"
pause
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
