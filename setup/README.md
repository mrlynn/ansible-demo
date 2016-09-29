## Synopsis

This directory contains details and instructions to help you get set up to run the ansible-demo.

## Prerequisites

1. Ansible

 - On Mac OS - simply type *brew install ansible*

 - ![Brew Install ansible](/images/brew_install_ansible.png "Brew Install Ansible")

2. AWS SSH Keys

 - You need to have your working AWS Keys.  These will be used to enable you to deploy ec2 instances from ansible.
 - If you do not have working keys, visit this link for instructions: [AWS: Creating a Key Pair](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
 - Place this key in the filesystem on your laptop - most likely in ~/.ssh
  - e.g. /Users/mlynn/.ssh/michael.lynn.pem
 - Modify the ansible.cfg file in the top level directory of this repo with the location of your key file.
  - private_key_file = /Users/mlynn/.ssh/michael.lynn.pem

