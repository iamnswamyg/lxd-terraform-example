resource "lxd_container" "salt" {
  for_each = var.salt-instances

  name          = each.value.name
  image         = each.value.image
  ephemeral     = false
  device {
    name = module.salt.volume
    type = "disk"
    properties = {
      path = "/lxd_temp"
      source = module.salt.volume
      pool = module.salt.salt_pool
    }
  }

  device {
    name = "eth0"
    type = "nic"

    properties = {
      name= "eth0"
      network  = module.salt.network
      "ipv4.address" = each.value.ip
    }
  }
  
  dynamic "device" {
    for_each = each.value.master ? [1] : []

    content {
      type = "disk"
      name= "pillar-share"
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
      name= "salt-share"
      properties = {
        source = "${path.cwd}/salt-root/salt"
        path = "/srv/salt"
        }
    }
  }

  start_container = true
}






