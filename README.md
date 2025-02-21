## etcd

### Local SSH connection
ssh -i .vagrant/machines/etcd1/virtualbox/private_key vagrant@192.168.56.121
ssh -i .vagrant/machines/etcd2/virtualbox/private_key vagrant@192.168.56.122
ssh -i .vagrant/machines/etcd3/virtualbox/private_key vagrant@192.168.56.123

### Remote SSH connection
ssh -p 1121 vagrant@192.168.18.100
ssh -p 1122 vagrant@192.168.18.100
ssh -p 1123 vagrant@192.168.18.100

### Ansible playbook for ETCD installation
ansible-playbook -i hosts.ini --user vagrant etcd-installation.yml 

## kubeadm

### Local SSH connection
ssh -i .vagrant/machines/controlplane/virtualbox/private_key vagrant@192.168.56.124
ssh -i .vagrant/machines/worker1/virtualbox/private_key vagrant@192.168.56.125
ssh -i .vagrant/machines/worker2/virtualbox/private_key vagrant@192.168.56.126

### Remote SSH connection
ssh -p 1124 vagrant@192.168.18.100
ssh -p 1125 vagrant@192.168.18.100
ssh -p 1126 vagrant@192.168.18.100

# Odysseas
1. Set the host IPs in the Ansible inventory

2. (If using username and password instead of SSH key to log in to hosts) Set up user and sudo password in the inventory.

3. Run the 3 playbooks in order: etcd, haproxy and cluster. There's a command at the top of each file.


Notes:

1. If you reset the Kubernetes cluster without resetting etcd, some nodes may need to be rebooted for the Calico pods to work, or they may not work at all.