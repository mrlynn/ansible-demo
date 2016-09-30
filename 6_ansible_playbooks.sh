#!/bin/sh
source functions.sh
export ANSIBLE_HOSTS=./ansible-hosts
echo `clear`
title "6 - ${red}Ansible${reset} Playbooks"
echo "${reset}"
echo "Playbooks are ansible scripts that encompass several tasks and modules.  Here's and example."
pause
typeit "cat playbook-hugepage.yml${green}"
echo ${green}
cat -n playbooks/playbook-hugepage.yml
echo "${reset}"
echo "Notice that this file is YAML - yet another markup language"
echo 
echo "1 Start of a yaml file"
echo "2 Indicates the start of a play and the host groups to be acted upon by this play. Database nodes." 
echo "3 Is the remote user that will be used to execute the commands or tasks"
echo "4 Start of a set of tasks to be executed."
echo "5 Text string describing the next task to be executed."
echo "6 Leveraging the shell module to execute something from the command line of our target."
echo "7 Text string describing the next task to be executed."
echo "8 Again, executing a shell command to change the value of a kernel setting."
echo 
echo "Let's run it"
pause
echo ${green}
typeit "ansible-playbook playbooks/playbook-hugepage.yml" 
ansible-playbook -i ansible-hosts playbooks/playbook-hugepage.yml 
echo ${reset}
pause
./7_overall_process.sh
