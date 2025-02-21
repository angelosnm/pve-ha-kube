resource "proxmox_vm_qemu" "vm_example" {
  vmid        = "901"
  name        = "opentofu-vm"
  target_node = "scx"
  clone       = "ubuntu22-cloud-init"
  full_clone  = true
  agent       = 1 # QEMU agent
  cores       = 1
  sockets     = 1
  memory      = 2048

  scsihw   = "virtio-scsi-single"
  bootdisk = "scsi0"

  serial {
    id   = 0
    type = "socket"
  }

  disks {
    scsi { # VM disk
      scsi0 {
        disk {
          storage = "local"
          size    = 32
        }
      }
    }
    ide { # Cloud-init drive mounted as CD-ROM
      ide2 {
        cloudinit {
          storage = "local"
        }
      }
    }
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  os_type    = "cloud-init"
  ipconfig0  = "ip=192.168.18.67/24,gw=192.168.0.1"
  nameserver = "143.233.1.9,143.233.7.10"
  ciuser     = "scio"
  sshkeys    = <<EOF
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1SY0yAJ/A+ruh+HuT1mzmw1r9ldM8IfNvLK24lIFvFx4Q3WnhQ3MPHBPL3Bl1+Z0V6xjVESntznGJXHOs+7CciU+HqNn+2p34Fh6jr+rHASAVG8OIIx8JhuadxkyMkJjiN9iIc97EUwc7AVmrWG1WKLSqZQIEfAhwg4lVZgwEPyf8v14r77MQJp9s5mI1pb0gwBeN7Ri3p03bbek8lTr4sQ9hKhmYIJg+WHZxkh326tgMNoqBNiuEDI4713A2pdfJGwqx9+CAwlB3e6vMDBHhKH/ls31vYPSfJAD3+8lK97tang7nGncUVbjeD7rPiCsyzj8JsEKasEZJy72TJhDHqfCPMyS/GullT7A/Vxvkb9roT5VU2YTZh7x2IdnEs8Z0gHoLyIIsvK5VIpKs1327ChOvQWYj5De0ddGvlNQ3d2IK2wezzwkYyoLFvxRCvJNWekgldXOsvTAqz1zYl6ixn+fffKGlLsuLpimsMiKSCY7sGzZ1kY2xOBMV950Y6Yk= agelosnm@PC
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0XUzsj2VtEkUCra47XkTvhuZ28M7G4qtOx3/xZ6UbT4EY1yhjrbPeEA3h8aL02fPeK5xW/hBbkZ3K38dt1+u8gjyRGyud3StUgjVMaJupuJIgEwPBMNKVAJ8gbiESA9P06G0DZahnO1cH8/XNNvzd7ToJ6RFChuDw+F1ivPOiNE23B127+w5UiLISfKBqwz2hGpwvaVxPy0PJCHgpsffpmd/VAq9oH+1SWkkBBxT1uXrMHYMKmwIcX1tK1mZHd4faUaWabEAYKbsO+pIT/4UORO2YYkwrG8N3lFCLw9Z7gYwRHeNudlQYvMR2kY+ZwYkVf7cc8bNXQWxLdk6pBgHKwaz93kKRxbKNho4fWHcFYMoQx/ZZrbHN2cojUX5y5klV6elFwVpL28jYBFsxUCL5n6IDl5IvhkCizbfOBYY7shCJ1YrSIAECI/EcXPVM4qbH7rk4Cb0qkdERQrsQUjA6XN6Dmso73k2J/O+uxW/8D8QLHbDb0XCR8wUapPdRmi8= odysseas@ubuntu
  EOF
}
