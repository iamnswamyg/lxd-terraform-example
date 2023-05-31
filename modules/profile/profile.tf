resource "lxd_profile" "profile" {
  for_each = var.profiles
  name = each.key
  
  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "${module.volume.storage_pools[each.value.pool].name}"
      path = "/"
    }
  }
}



  

