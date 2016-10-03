#!/bin/sh
source functions.sh
echo `clear`
title "2 - ${red}Ansible${reset} Hosts File"
echo "Ansible leverages a hosts file to enable you to group your hosts logically."
echo
echo "Consider the following example:${green}"
typeit "cat ansible-hosts"
echo ${green}
cat -n ansible-hosts
echo "${reset}"
echo "The hosts file contains a list of all of the servers in your environment that you wish to act upon via ${red}Ansible${reset}.  You can also use the hosts file's grouping capabilities to group hosts logically.  Grouping enables you to separate servers so that you can act on them differently.  For example, you may have a WEB group and a DATABASE group for a given application environment."
echo "At this time, you may wish to open your EC2 Console to show these hosts."
pause
./3_ansible-ping.sh
