locals {
  vms = {
    etcd-node-1 = {
      vmid       = 131
      name       = "etcd-node-1"
      ip         = "10.100.100.131"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
  
    etcd-node-2 = {
      vmid       = 132
      name       = "etcd-node-2"
      ip         = "10.100.100.132"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
  
    etcd-node-3 = {
      vmid       = 133
      name       = "etcd-node-3"
      ip         = "10.100.100.133"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC        
        EOF
    }

    kubernetes-control-plane-node-1 = {
      vmid       = 134
      name       = "kubernetes-control-plane-node-1"
      ip         = "10.100.100.134"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
  
    kubernetes-control-plane-node-2 = {
      vmid       = 135
      name       = "kubernetes-control-plane-node-2"
      ip         = "10.100.100.135"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
  
    kubernetes-control-plane-node-3 = {
      vmid       = 136
      name       = "kubernetes-control-plane-node-3"
      ip         = "10.100.100.136"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }

    kubernetes-worker-node-1 = {
      vmid       = 137
      name       = "kubernetes-worker-node-1"
      ip         = "10.100.100.137"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 16384
      cores      = 4
      disk_size  = 100
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
    
    haproxy-node-1 = {
      vmid       = 138
      name       = "haproxy-node-1"
      ip         = "10.100.100.138"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
        EOF
    }
  
    haproxy-node-2 = {
      vmid       = 139
      name       = "haproxy-node-2"
      ip         = "10.100.100.139"
      gateway    = "10.100.100.254"
      dns        = "1.1.1.1,9.9.9.9"
      memory     = 4096
      cores      = 2
      disk_size  = 40
      network    = "vmbr0"
      user       = "koukos"
      sshkeys    = <<EOF
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC  
        EOF
    }
  }
}

resource "proxmox_vm_qemu" "cglabs_ha_k8s" {
  for_each    = local.vms

  vmid        = each.value.vmid
  name        = each.value.name
  target_node = "hector"
  clone       = "ubuntu-24.04-template"
  full_clone  = true
  agent       = 1
  cores       = each.value.cores
  sockets     = 1
  memory      = each.value.memory
  scsihw      = "virtio-scsi-single"
  bootdisk    = "scsi0"
  tags        = "cglabs"

  serial {
    id   = 0
    type = "socket"
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = each.value.disk_size
        }
      }
    }

    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  network {
    id     = 0
    model  = "virtio"
    bridge = each.value.network
  }

  ipconfig0  = "ip=${each.value.ip}/24,gw=${each.value.gateway}"
  nameserver = "${each.value.dns}"
  ciuser     = "${each.value.user}"

  sshkeys = "${each.value.sshkeys}"
}
