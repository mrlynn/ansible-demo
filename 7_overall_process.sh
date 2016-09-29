#!/bin/sh
source functions.sh
echo `clear`
title "7 - ${red}Ansible${reset} Overall Ops Manager Process"
echo "${reset}"
echo "Here's list of all the things we need to do to onboard our mongodb nodes:"
echo "${green}\c"
echo "1. Deploy your servers."
echo "2. Set hugepages kernel setting."
echo "3. Install prereqs and MongoDB Server"
echo "4. Install the opsmanager package on the opsmanager server."
echo "5. Wait until you've started opsmanager and configured it from the GUI"
echo "6. Install Ops Manager Agent on the Database nodes."
echo ${reset}
echo 
echo "We've created playbooks for each of these steps and we'll review each."
pause
echo `clear`
echo "${stars// /*}"
echo "playbook-opsmanager-prerequisites.yml"
echo "${stars// /*}"
echo ${green}
more -N playbooks/playbook-opsmanager-prerequisites.yml
echo ${reset}
pause
echo `clear`
echo "${stars// /*}"
echo "playbook-opsmanager-mongods.yml"
echo "${stars// /*}"
echo ${green}
more -N playbooks/playbook-opsmanager-mongods.yml
echo ${reset}
pause
echo `clear`
echo "${stars// /*}"
echo "playbook-opsmanager-package.yml"
echo "${stars// /*}"
echo ${green}
more -N playbooks/playbook-opsmanager-package.yml
echo ${reset}
echo
echo "Now that we have the nodes prepped, and opsmanager installed, we need to visit the ops manager gui and configure it with some settings like the url, etc."
echo "Once that's complete - you can now execute the playbook to install the opsmanager automation agent on the mongodb server nodes."
pause
echo `clear`
echo "playbook-automation-agent.yml"
echo ${green}
more -N playbooks/playbook-automation-agent.yml
echo ${reset}
echo "At this point we can run the setup script '8_overall_process-script.sh'"
pause
./8_overall_process-script.sh
