#!/bin/sh
source functions.sh
this=$0
prev=''
next='./2_ansible-hosts.sh'
echo `clear`
title "1 - ${red}Ansible${reset} Configuration File: ${bold}ansible.cfg${reset}"
echo "${red}Ansible${reset} uses a central configuration file to enable you to configure ${red}Ansible${reset} behaviors.  This is where you configure things like - the location for your private keys."
echo "Let's take a look at the one we're using:${green}"
pause
typeit "cat ansible.cfg"
echo "${green}"
more -N ansible.cfg
echo ${reset}
echo Notice the following line:
echo     ${green}private_key_file = /Users/mlynn/.ssh/michael.lynn.pem${reset}
echo
echo "The ${bold}ansible.cfg${reset} file can be stored anywhere on your master configuration management node.  You can tell ansible where to find its configuration file using the environment variable 'ANSIBLE_CONFIG'."
echo
echo "This is the ${red}secret${reset} to how ansible can get to all my hosts."
echo "Let's take a look at another key file - ${red}ansible-hosts${reset}."
pause
echo ${reset}
./2_ansible-hosts.sh
