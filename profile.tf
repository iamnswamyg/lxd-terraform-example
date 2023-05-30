resource "lxd_profile" "profile_name" {
  name = var.profile_name
  
  
  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "${lxd_storage_pool.salt_pool.name}"
      path = "/"
    }
  }

  
  
}



  

