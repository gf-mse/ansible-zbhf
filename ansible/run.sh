#!/bin/sh

export ANSIBLE_LOG_PATH=`dirname $0`/logs/zenbleed-hotfix.`date +%F-t-%s`.log
mkdir -p $(dirname "${ANSIBLE_LOG_PATH}")

ansible-playbook -i hosts -f5 "$@" doit.yml # -v -e targets=all

