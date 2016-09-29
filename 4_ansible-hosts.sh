#!/bin/sh
source functions.sh
echo `clear`
title "4 - ${red}Ansible${reset} environment variables"
echo "Let's save some typing by using one of ${red}ansible${green}'s many env configurations.${reset}"
echo 
typeit "export env ANSIBLE_HOSTS=./ansible-hosts\n"
export env ANSIBLE_HOSTS=./ansible-hosts
echo ${reset}
echo "Going forward I can skip using the ${green}-i ansible-hosts${yellow} flag and argument."
echo 
echo "We can do the same for ${yellow}ANSIBLE_CONFIG${reset}"
echo
echo "export ANSIBLE_CONFIG=./ansible.cfg"
echo "So here's an example:"
echo 
pause
typeit "ansible -m ping all"
ansible -m ping all
echo ${reset}
pause
./5_ansible-script.sh
