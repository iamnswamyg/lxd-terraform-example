resource "lxd_container" "salt" {
  depends_on = [module.network]
  for_each = var.instances

  name          = each.value.name
  image         = each.value.image
  ephemeral     = false
  device {
    name = module.profile.volume
    type = "disk"
    properties = {
      path = "/lxd_temp"
      source = module.profile.volume
      pool = module.profile.pool
    }
  }

  device {
    name = "eth0"
    type = "nic"

    properties = {
      name= "eth0"
      network  = each.value.network_name
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
      name= "share"
      properties = {
        source = "${path.cwd}/salt-root/salt"
        path = "/srv/salt"
        }
    }
  }

  start_container = true
}






