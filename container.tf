locals {
  salt_ip = var.instances["salt-master"].nic_devices[0].properties.ipv4
}

resource "lxd_container" "salt" {
  
  for_each = var.instances

  name          = each.key
  image         = each.value.image
  ephemeral     = each.value.ephemeral
  profiles    = [for profile in each.value.profiles : lxd_profile.profile[profile].name]
  
  dynamic "device" {
    for_each = each.value.share_devices
    content {
      type        = "disk"
      name        = device.value.name
    properties = {
      source = "${path.cwd}/${device.value.properties.source}"
      path   = device.value.properties.path
    }
  }
  
  }
  dynamic "device" {
    for_each = each.value.pool_devices
    content {
      type        = "disk" 
      name        = lxd_storage_pool.pool[device.value.properties.pool].name
    properties = {
      source = "${lxd_volume.volume[device.value.volume].name}"
      path = device.value.properties.path
      pool = lxd_storage_pool.pool[device.value.properties.pool].name
    }
  }
  }

  dynamic "device" {
    for_each = each.value.nic_devices
    content {
      type        = "nic" 
      name        = device.value.name
    properties = {
      name                  = device.value.name
      network               = "${lxd_network.network[device.value.properties.network].name}"
      "ipv4.address"        = device.value.properties.ipv4
    }
  }
  }
  start_container = each.value.start

provisioner "local-exec" {
    command = <<EOF
%{ if each.key == "salt-master" }
 lxc exec ${each.key} -- bash -xe -c '
 echo "interface: ${each.value.nic_devices[0].properties.ipv4}
auto_accept: True
gpg_keydir: /etc/salt/gpgkeys
file_roots:
  base:
    - /srv/saltstack/salt
pillar_roots:
  base:
    - /srv/saltstack/pillar
    - /srv/saltstack/global_pillar">/etc/salt/master.d/local.conf
  systemctl restart salt-master
  echo "---after restart master config---"
  cat /etc/salt/master.d/local.conf
 '
%{ else }
lxc exec ${each.key} -- bash -xe -c '
 echo "master: ${local.salt_ip}
id: ${each.key}">/etc/salt/minion.d/local.conf
systemctl restart salt-minion
echo "---after restart minion config---"
cat /etc/salt/minion.d/local.conf
 '
%{ endif }
EOF
}
}





