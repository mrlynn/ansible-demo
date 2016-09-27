#!/bin/sh
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo `clear`
echo "${yellow}Let's save some typing by using one of ${red}ansible${green}'s many env configurations.${reset}"
echo 
echo "${green}export env ANSIBLE_HOSTS=./ansible-hosts"
export env ANSIBLE_HOSTS=./ansible-hosts
echo ${reset}${yellow}
echo "Going forward I can skip using the ${green}-i ansible-hosts${yellow} flag and argument."
echo 
echo "We can do the same for ANSIBLE_CONFIG"
echo
echo "export ANSIBLE_CONFIG=./ansible.cfg"
echo ${reset}
