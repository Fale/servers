# INSTALL SECTION
network --bootproto=dhcp --nameserver=213.133.99.99 --noipv6  --activate
lang en_US.UTF-8
keyboard us
timezone UTC --isUtc

url --url=http://mirror.hetzner.de/centos/7/os/x86_64/
repo --name=updates --baseurl=http://mirror.hetzner.de/centos/7/updates/x86_64/

rootpw is.42
reboot

# Disks
bootloader --location=mbr --driveorder=sda,sdb
zerombr
clearpart --all --initlabel 

# Disk partitioning
part raid.a1 --size=500 --ondisk=sda
part raid.a2 --size=1   --ondisk=sda    --grow
part raid.b1 --size=500 --ondisk=sdb
part raid.b2 --size=1   --ondisk=sdb    --grow

raid /boot --device=md0 --fstype="ext4" --level=RAID1 raid.a1 raid.b1
raid pv.01 --device=md1 --level=RAID1 raid.a2 raid.b2

volgroup centos pv.01

logvol swap --vgname="centos" --size=4096 --name="lv_swap"
logvol / --vgname="centos" --size=1 --grow --name="lv_root" --fstype="xfs"

%packages --nobase
@core --nodefaults
-aic94xx-firmware*
-alsa-*
-biosdevname
-btrfs-progs*
-iprutils
-ivtv*
-iwl*firmware
-libertas*
-kexec-tools
-plymouth*
%end
