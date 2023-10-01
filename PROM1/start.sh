#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


ansible-galaxy install --roles-path "$SCRIPT_DIR/roles" -r requirements.yml
ansible-playbook  -i inventories/rbr deploy_prom.yml 

echo "run 'forkstat -e all -S' in case of any problems"