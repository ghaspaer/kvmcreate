http://www-01.ibm.com/support/knowledgecenter/linuxonibm/liaai.kvminstall/liaaikvminstallvirtinstall.htm

virt-install --name RHEL-6.3-LAMP \
--os-type=linux \
--os-variant=rhel6 \
--cdrom /mnt/ISO/rhel63-server-x86_64.iso \
--graphics vnc\
--disk pool=NFS-01,format=raw,size=20 \
--ram 2048 \
--vcpus=2 \
--network bridge=br0 \
--hvm \
--virt-type=kvm \


# virt-install \
       --name kvm1 \
       --ram 500 \
       --disk path=/var/lib/libvirt/images/kvm1.img,size=5 \
       --network network:default \
       --accelerate \
       --vnc \
       -c /tmp/SLES11-x86_64-DVD.iso
