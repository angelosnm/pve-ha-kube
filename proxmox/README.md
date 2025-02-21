`cp proxmox/proxmox_env.tfvars.example proxmox/proxmox_env.tfvars`

`tofu plan -var-file="proxmox_env.tfvars"`

`tofu apply -var-file="proxmox_env.tfvars"`