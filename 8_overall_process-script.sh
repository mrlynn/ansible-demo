#!/bin/bash
source functions.sh
inventory="ansible-hosts"
echo `clear`
title "8 - Run the playbook orchestration script"
echo "Setting up a ${green}MongoDB${reset} cluster with ${green}Ops Manager${reset}"
echo "An ${red}ansible${reset} inventory in ./ansible-hosts is expected"
echo "The hosts you intend to use for your cluster should already be up and running."
echo "The ${green}Ops Manager${reset} instance must be in group [opsManager]"
echo "The replica set instances must be in group [ReplicaSet]"
echo "ensure you are using the right private keyfile in ansible.cfg"

echo
echo "${stars// /*}"
echo "Step 1 - Ping Hosts to Verify Connectivity"
echo "${stars// /*}"
echo "ansible -i ${inventory} all -m ping\n"
pause
ansible -i ${inventory} all -m ping

title "Do you wish to install an Ops Manager Server?"
read -n1 -rsp "[Y]es - Install Ops Manager Package, [N]o, Already have it running and configured" ans
if [[ "$ans" =~ ^[Yy] ]]; then
    title "Step 3 - Installing ${green}Ops Manager${reset} - Prerequisites"
    typeit "ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-prerequisites.yml"
    pause
    ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-prerequisites.yml
    echo "${stars// /*}"
    echo "Step 4 - Install ${green}Ops Manager${reset} MongoDB Server"
    pause
    ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-mongods.yml
    echo "${stars// /*}"
    echo "Step 5 - Install ${green}Ops Manager${reset} Package"
    echo "${stars// /*}"
    pause
    ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-package.yml

    echo "Now open a browser and configure your ${green}Ops Manager${reset} "
    echo "Come back here when you've finished "
fi
echo
pause
echo "${stars// /*}"
echo "Step 6 - Now install the ${green}Ops Manager${reset} Automation Agent on your target replica set members"
echo "${stars// /*}"
pause
ansible-playbook -i ${inventory} playbooks/playbook-automation-agent.yml
