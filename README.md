# mpadgett-dotfiles

Semi-automated Arch development environment setup using Ansible.

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
