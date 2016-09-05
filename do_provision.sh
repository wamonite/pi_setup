#!/bin/bash -eu

host_arg=${1-}
[ ! -z "${host_arg}" ] && ansible_limit="--limit ${host_arg}"
ansible-playbook ${ansible_limit-} -u pi provision_files/provision.yml
