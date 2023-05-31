resource "lxd_profile" "profile" {
  for_each = var.profiles
  name     = each.key

  dynamic "device" {
    for_each = each.value.pool_devices
    content {
      type        = "disk"
      name        = device.value.name
    properties = {
      pool = "${module.volume.storage_pools[device.value.properties.pool].name}"
      path = device.value.properties.path
    }
  }
  }
  dynamic "device" {
    for_each = each.value.share_devices
    content {
      type        = "disk"
      name        = device.value.name
    properties = {
      source = device.value.properties.source
      path = device.value.properties.path
    }
  }
}

}








  

