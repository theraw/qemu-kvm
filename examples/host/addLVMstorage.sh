## CREATE LVM (In this case my /dev/md3 is my additional disk partition so find yours)
~$ umount /dev/md3 # (If md3 is mounted in /etc/fstab remove it from that file!)
~$ pvcreate /dev/md3
~$ vgcreate dopehosting /dev/md3

## ADD LVM TO QEMU
~$ virsh pool-define-as dopehosting logical
~$ virsh pool-start dopehosting
~$ virsh pool-autostart dopehosting
