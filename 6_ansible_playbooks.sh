#!/bin/sh
source functions.sh
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo `clear`
echo "${reset}"
echo "Playbooks are ansible scripts that encompass several tasks and modules.  Here's and example."
echo "${green}$ \c"
typeit "cat playbook-hugepage.yml${green}"
cat -n playbooks/playbook-hugepage.yml
echo "${reset}Notice that this file is YAML - yet another markup language"
echo "1 Start of a yaml file"
echo "2 Indicates the start of a play and the host groups to be acted upon by this play. Database nodes." 
echo "3 Is the remote user that will be used to execute the commands or tasks"
echo "4 Start of a set of tasks to be executed."
echo "5 Text string describing the next task to be executed."
echo "6 Leveraging the shell module to execute something from the command line of our target."
echo "7 Text string describing the next task to be executed."
echo "8 Again, executing a shell command to change the value of a kernel setting."
echo 
echo "We'll run this on the nodes in our ansible-hosts file."
echo "ansible-playbook playbook-hugepages.yml"
echo "press [RETURN] to execute${green}"
read ans
echo "${green}$ \c"
typeit "ansible-playbook playbooks/playbook-hugepage.yml" 
ansible-playbook playbooks/playbook-hugepage.yml 
echo ${reset}
