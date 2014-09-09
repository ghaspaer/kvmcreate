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

       
ISO_PATH=/home/iigeo/vm/win7_lite.iso  #debian iso
KVM_HOSTNAME=win7lic22 #name maquina
KVM_RAM=3000 #ram virtual
KVM_CPU=1 #(cantidad de CPU a usar)
KVM_DISCO=20 #(disco duro en GB)
KVM_PATH=/home/iigeo/vm/win7lic2.img ##PATH img win7
virt-install --connect=qemu:///system --name=${KVM_HOSTNAME} --ram=${KVM_RAM} --vcpus=${KVM_CPU} --check-cpu --disk path=${KVM_PATH},size=${KVM_DISCO} --cdrom=${ISO_PATH} --vnc --noautoconsole \
--os-type=Windows --os-variant=win7 --accelerate --network bridge=br0 --hvm
