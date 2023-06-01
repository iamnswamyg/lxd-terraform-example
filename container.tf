resource "lxd_container" "salt" {

  for_each = var.instances

  name          = each.value.name
  image         = each.value.image
  ephemeral     = each.value.ephemeral
  profiles = [lxd_profile.profile[each.value.profile].name]
  
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
}





