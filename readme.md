# Fale.io Ansible Repository

## Run it

### First run

    ansible-playbook --vault-password-file ~/.ssh/ansible_vault_key.txt playbooks/provision.yaml
    ansible-playbook playbooks/firstrun.yaml
    ansible-playbook master.yaml

### Following runs

    ansible-playbook master.yaml

## Develop it

### Edit vault file

    ansible-vault --vault-password-file ~/.ssh/ansible_vault_key.txt edit vault.yaml
