#!/bin/sh
source functions.sh
echo `clear`
echo "Ansible leverages a hosts file to enable you to group your hosts logically."
echo
echo "Consider the following example:${green}"
echo "$ \c"
typeit "cat ansible-hosts"
cat -n ansible-hosts
echo ${reset}
echo
