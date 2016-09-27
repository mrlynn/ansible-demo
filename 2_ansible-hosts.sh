#!/bin/sh
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`
echo `clear`
echo "Ansible leverages a hosts file to enable you to group your hosts logically."
echo
echo "Consider the following example:${green}"
echo "$ cat ansible-hosts"
cat -n ansible-hosts
echo ${reset}
echo
