#!/bin/sh
source functions.sh
echo `clear`
echo "${yellow}Let's save some typing by using one of ${red}ansible${green}'s many env configurations.${reset}"
echo 
echo "${green}$ \c"
typeit "export env ANSIBLE_HOSTS=./ansible-hosts"
export env ANSIBLE_HOSTS=./ansible-hosts
echo ${reset}${yellow}
echo "Going forward I can skip using the ${green}-i ansible-hosts${yellow} flag and argument."
echo 
echo "We can do the same for ANSIBLE_CONFIG"
echo
echo "export ANSIBLE_CONFIG=./ansible.cfg"
echo "So here's an example:"
echo 
echo "${green}$ \c"
typeit "ansible -m ping all"
ansible -m ping all
echo ${reset}
