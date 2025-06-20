This project automates the provisioning and deployment of a highly available Kubernetes cluster using Terraform and Ansible. It is designed to run on a Proxmox virtualized environment and includes all the necessary infrastructure and configuration for setting up a production-like Kubernetes environment.

The infrastructure setup leverages the Telmate/proxmox Terraform provider, which requires a pre-existing VM template on the Proxmox host. The system has been tested and verified on Ubuntu 24.04, using the official cloud-init image as the base template.

This project provides an automated pipeline for provisioning and deploying a fully functional Kubernetes cluster on a **Proxmox** virtualized environment using **Terraform** and **Ansible**.

The infrastructure setup leverages the [`Telmate/proxmox`](https://github.com/Telmate/terraform-provider-proxmox) Terraform provider, which requires a pre-existing VM template to be available on the Proxmox host. The system has been tested and verified on **Ubuntu 24.04**, using the official cloud-init image as the base template.

---

## 📦 Project Structure

```text
├── ansible
│   ├── etcd-installation.yml
│   ├── haproxy-installation.yml
│   ├── hosts.ini
│   ├── kubeadm-config.yaml.j2
│   ├── kubernetes-installation-playbook.yml
│   ├── kubernetes-post-installation-playbook.yml
│   ├── metallb-ipaddresspool.yaml.j2
│   └── metallb-l2Advertisement.yaml
├── README.md
└── tf
    ├── main.tf
    ├── provider.tf
    └── proxmox_env.tfvars.example
```
## OpenTofu
```bash
cd tf
cp proxmox_env.tfvars.example proxmox_env.tfvars
tofu init
tofu plan -var-file="proxmox_env.tfvars"
tofu apply -var-file="proxmox_env.tfvars"
```

## Ansible

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