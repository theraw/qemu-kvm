mkdir -p /var/lib/libvirt/qemu/channel/target
chown -R libvirt-qemu:kvm /var/lib/libvirt/qemu/channel

nano /etc/apparmor.d/abstractions/libvirt-qemu
## put "/var/lib/libvirt/qemu/channel/target/* rw," on it

<channel type="unix">
  <source mode="bind"/>
  <target type="virtio" name="org.qemu.guest_agent.0"/>
</channel>

## virsh qemu-agent-command VMNAME '{"execute":"guest-network-get-interfaces"}'
