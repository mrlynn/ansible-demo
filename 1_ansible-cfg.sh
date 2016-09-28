#!/bin/sh
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`
echo `clear`
echo "${red}Ansible${reset} uses a central configuration file.  Let's take a look at the one we're using:${green}"
echo "$ cat ansible.cfg"
cat ansible.cfg
echo ${reset}
echo Notice the following line:
echo     ${green}private_key_file = /Users/mlynn/.ssh/michael.lynn.pem${reset}
echo
echo This is the ${red}secret${reset} to how ansible can get to all my hosts.
