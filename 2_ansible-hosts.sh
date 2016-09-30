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
echo ${reset}
echo
echo "At this time, you may wish to open your EC2 Console to show these hosts."
pause
./3_ansible-ping.sh
