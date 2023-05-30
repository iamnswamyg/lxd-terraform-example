resource "lxd_profile" "sample_profile" {
  name = var.profile_name

  device {
    name = "eth0"
    type = "nic"

    properties = {
      name= "eth0"
      network  = "${lxd_network.sample_network.name}"
    }
  }

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "${lxd_storage_pool.sample_pool.name}"
      path = "/"
    }
  }

  
}
