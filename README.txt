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
