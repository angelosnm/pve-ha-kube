## OpenTofu
```bash
cd tf
cp proxmox_env.tfvars.example proxmox_env.tfvars
tofu init
tofu plan -var-file="proxmox_env.tfvars"
tofu apply -var-file="proxmox_env.tfvars"
```

## Ansible

1. Set the host IPs in the Ansible inventory (`ansible/hosts.ini`)

2. (If using username and password instead of SSH key to log in to hosts) Set up user and sudo password in the inventory.

3. Run the 3 playbooks in order: etcd, haproxy and cluster.

4. If you reset the Kubernetes cluster without resetting etcd, some nodes may need to be rebooted for the Calico pods to work, or they may not work at all.


```bash
cd ansible
```

### Ansible playbook for ETCD installation
```bash
ansible-playbook -i hosts.ini --user koukos etcd-installation.yml -e 'ansible_ssh_common_args="-o StrictHostKeyChecking=no"'
```

### Ansible playbook for HAProxy installation
```bash
ansible-playbook -i hosts.ini --user koukos haproxy-installation.yml -e 'ansible_ssh_common_args="-o StrictHostKeyChecking=no"'
```

### Ansible playbook for Kubernetes installation
```bash
ansible-playbook -i hosts.ini --user koukos kubernetes-installation-playbook.yml -e 'ansible_ssh_common_args="-o StrictHostKeyChecking=no"'
```

### Ansible playbook for Kubernetes post installation
```bash
ansible-playbook -i hosts.ini --user koukos kubernetes-post-installation-playbook.yml -e 'ansible_ssh_common_args="-o StrictHostKeyChecking=no"'
```