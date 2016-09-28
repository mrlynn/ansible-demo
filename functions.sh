#!/bin/bash
bold=`tput bold`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
USEPV=1
echo "t" | pv -qL 10 > /dev/null 2>&1 || USEPV=0
SPEED=15
function typeit {
  [ $USEPV -eq 1 ] && echo $1 | pv -qL $SPEED || echo $1
}
export ANSIBLE_HOSTS=./ansible-hosts
export ANSIBLE_CONFIG=./ansible.cfg
