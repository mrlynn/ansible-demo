#!/bin/sh
source functions.sh
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo `clear`
echo "${yellow}Ansible has a ton of modules - in addition to print.  Let's look at ${green}script${yellow}"
echo 
echo "First, we'll create a test script to echo some output and execute a command on the remote hosts."
echo "${green}$ \c"
typeit "cat test.sh"
cat -n files/test.sh
echo ${yellow}
echo "Now, to execute this on remote hosts, we can simple invoke it as a module:${green}"
echo "press [RETURN] to execute${green}"
read ans
echo "$ \c"
typeit "${green}ansible -m script -a files/test.sh all"
ansible -m script -a files/test.sh all
echo ${reset}
echo "Notice, the output is in JSON format - but you can see where the echo statements in the test script are present."
echo "As well, you can see the output of the env command - so we can see each servers environment."
