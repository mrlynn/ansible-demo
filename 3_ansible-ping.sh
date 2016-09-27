#!/bin/sh
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo `clear`
echo "${green}ansible -m ping -i ansible-hosts all"
ansible -m ping -i ansible-hosts all
echo ${reset}
echo "The flag and argument ${red}-m ping${reset} specifies that we want to invoke a module 'ping'"
echo 
echo "The ${red}ping${reset} module simple tests connectivity to a set of hosts"
echo "In this case - we're telling ping to use the ${green}all${reset} group of hosts."
