resource "lxd_container" "salt" {
  for_each = var.salt-instances

  name          = each.value.name
  image         = each.value.image
  ephemeral     = false
  device {
    name = var.salt-network.volume_name
    type = "disk"
    properties = {
      path = "/lxd_temp"
      source = lxd_volume.volume.name
      pool = lxd_storage_pool.salt_pool.name
    }
  }

  device {
    name = "eth0"
    type = "nic"

    properties = {
      name= "eth0"
      network  = "${lxd_network.network.name}"
      "ipv4.address" = each.value.ip
    }
  }
  
  dynamic "device" {
    for_each = each.value.master ? [1] : []

    content {
      type = "disk"
      name= var.profile_pillar_share
      properties = {
        source = "${path.cwd}/salt-root/pillar"
        path = "/srv/pillar"
      }
    }
  }
    dynamic "device" {
    for_each = each.value.master ? [1] : []

    content {
      type = "disk"
      name= var.profile_salt_share
      properties = {
        source = "${path.cwd}/salt-root/salt"
        path = "/srv/salt"
        }
    }
  }

  start_container = true
}






