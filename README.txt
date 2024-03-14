GENTOO Installation for Sleipnir
===========================

History:
--------
2024-03-14 Initial Installation

Partitions:
-----------
-to fill -

 2024-03-14 Initial Installation:
--------------------------------
gdisk /dev/nvme0n1 
mkfs.fat -F 32 /dev/nvme0n1p1 
mkfs.ext4 -E lazy_itable_init=0,lazy_journal_init=0 /dev/nvme0n1p2 
tune2fs -o discard /dev/nvme0n1p2 
mount /dev/nvme0n1p2 /mnt/gentoo 
chronyd -q 
cd /mnt/gentoo 
wget https://distfiles.gentoo.org/releases/amd64/autobuilds/20240312T171909Z/stage3-amd64-hardened-nomultilib-openrc-20240312T171909Z.tar.xz
tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner 
nano /mnt/gentoo/etc/portage/make.conf 
cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
mount --types proc /proc /mnt/gentoo/proc 
mount --rbind /sys /mnt/gentoo/sys 
mount --rbind /dev /mnt/gentoo/dev 
mount --bind /run /mnt/gentoo/run 
chroot /mnt/gentoo /bin/bash 
echo "Europe/Berlin" > /etc/timezone 
mkdir --parents /etc/portage/repos.conf 
cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf 
mkdir /efi                                             
mount /dev/nvme0n1p1 /efi 
emerge-webrsync 
