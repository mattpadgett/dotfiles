# mpadgett-dotfiles

Semi-automated Arch development environment setup using Ansible.
---
## Basics

- Used the 2023.08.01 Arch ISO
- Running on VirtualBox
  - Shared Clipboard: Bidirectional
  - EFI: Enabled
  - PAE / NX: Enabled
  - Nested VT-x/AMD-V: Enabled
  - Nested Paging: Enabled
  - Video Memory: Max (128 MB)
  - Graphics Controller: VMSVGA
  - 3D Acceleration: Disabled
  - Network: Adapter 1; Bridged Adapter
  - Shared Folder:
    - Folder Path: C:\data\vm_shared
    - Folder Name: vm_shared
    - Mount Point: /vm_shared
    - Read Only: Disabled
    - Auto Mount: Enabled
    - Make Permanent: Enabled
- 200 GB VDI Pre-Allocated

## Boot from ISO
---

```bash
curl -s -S -L https://raw.githubusercontent.com/mattpadgett/dotfiles/main/bin/arch-bootstrap-1 > ~/arch-bootstrap-1
```
```bash
chmod +x ~/arch-bootstrap-1
```
```bash
~/arch-bootstrap-1
```

```bash
arch-chroot /mnt
```

```bash
curl -s -S -L https://raw.githubusercontent.com/mattpadgett/dotfiles/main/bin/arch-bootstrap-2 > ~/arch-bootstrap-2
```
```bash
chmod +x ~/arch-bootstrap-2
```
```bash
~/arch-bootstrap-2
```
```bash
exit
```
```bash
umount -a
```
```bash
reboot
```

## Login as root
---

```bash
systemctl enable --now dhcpcd vboxservice
```

```bash
curl -s -S -L https://raw.githubusercontent.com/mattpadgett/dotfiles/main/bin/mpadgett-dotfiles > /usr/local/bin/mpadgett-dotfiles
```
```bash
chmod +x /usr/local/bin/mpadgett-dotfiles
```
```bash
mpadgett-dotfiles
```
```bash
exit
```

## Login as newly created user
---

```bash
mpadgett-dotfiles
```
```bash
cp /vm_shared/vault-password.txt ~/.dotfiles/
```
```bash
mpadgett-dotfiles
```
