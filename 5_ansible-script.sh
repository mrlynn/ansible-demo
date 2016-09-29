#!/bin/sh
source functions.sh
echo `clear`
title "5 - ${red}Ansible${reset} modules: script"
echo "${red}Ansible${reset} has a ton of modules - in addition to print.  Let's look at ${green}script${reset}"
echo 
echo "First, we'll create a test script to echo some output and execute a command on the remote hosts."
typeit "cat test.sh"
echo ${green}
cat -n files/test.sh
echo ${yellow}
echo "Now, to execute this on remote hosts, we can simple invoke it as a module:${green}"
pause
typeit "${green}ansible -m script -a files/test.sh all"
echo ${green}
ansible -m script -a files/test.sh all
echo ${reset}
echo "Notice, the output is in JSON format - but you can see where the echo statements in the test script are present."
echo "As well, you can see the output of the env command - so we can see each servers environment."
pause
./6_ansible_playbooks.sh
