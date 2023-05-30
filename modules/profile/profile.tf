resource "lxd_profile" "profile_name" {
  name = var.profile.profile_name
  
  
  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "${lxd_storage_pool.pool.name}"
      path = "/"
    }
  }

  
  
}



  

