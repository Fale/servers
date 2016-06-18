# Locati.cc Ansible Repository

## Run it

### First run

    ansible-playbook --vault-password-file ~/.ssh/ansible_vault_key.txt playbooks/provision.yaml
    # Add DNSs
    ansible-playbook --vault-password-file ~/.ssh/ansible_vault_key.txt playbooks/firstrun.yaml

### Following runs

    ansible-playbook --vault-password-file ~/.ssh/ansible_vault_key.txt master.yaml

## Develop it

### Edit vault file

    ansible-vault --vault-password-file ~/.ssh/ansible_vault_key.txt edit keys/locati_cc.yaml
