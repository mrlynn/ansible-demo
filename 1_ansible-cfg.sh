#!/bin/sh
source functions.sh
this=$0
prev=''
next='./2_ansible-hosts.sh'
echo `clear`
title "1 - ${red}Ansible${reset} Configuration File: ${bold}ansible.cfg${reset}"
echo "${red}Ansible${reset} uses a central configuration file.  Let's take a look at the one we're using:${green}"
pause
typeit "cat ansible.cfg"
echo "${green}"
more -N ansible.cfg
echo ${reset}
echo Notice the following line:
echo     ${green}private_key_file = /Users/mlynn/.ssh/michael.lynn.pem${reset}
echo
echo "This is the ${red}secret${reset} to how ansible can get to all my hosts."
echo "Let's take a look at another key file - ${red}ansible-hosts${reset}."
pause
echo ${reset}
./2_ansible-hosts.sh
