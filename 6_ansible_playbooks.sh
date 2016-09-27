#!/bin/sh
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo `clear`
echo "${yellow}Up until now, we've only looked at individual commands or modules.  But ansible supports execution of"
echo "massive sets of instructions called playbooks via the command ansible-playbook."
echo
echo "Let's look at a simple one that we'll use to reset the value of a kernel parameter on our mongodb hosts."
echo "cat playbook-hugepage.yml${green}"
cat -n playbooks/playbook-hugepage.yml
echo "${yellow}"
echo "Notice that this file is YAML - yet another markup language"
echo "1 Indicates the start of a yaml file"
echo "2 Indicates the start of a play and designates the host groups to be acted upon by this play"
echo "3 Is the remote user that will be used to execute the commands or tasks"
echo "4 Start of a set of tasks to be executed."
echo "5 Text string describing the next task to be executed."
echo "6 Leveraging the shell module to execute something from the command line of our target."
echo "7 Text string describing the next task to be executed."
echo "8 Again, executing a shell command to change the value of a kernel setting."
echo 
echo "To execute we use the following command:${green}"
echo "ansible-playbook playbook-hugepages.yml"
echo "press [RETURN] to execute${green}"
read ans
ansible-playbook playbooks/playbook-hugepage.yml
echo ${reset}
