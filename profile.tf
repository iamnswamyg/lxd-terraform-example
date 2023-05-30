resource "lxd_profile" "profile" {
  name = var.profile_name
  
  
  device {
    name = "eth0"
    type = "nic"

    properties = {
      name= "eth0"
      network  = "${lxd_network.network.name}"
    }
  }

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "${lxd_storage_pool.pool.name}"
      path = "/"
    }
  }

  device {
    type = "disk"
    name= var.profile_pillar_share
    properties = {
      source = "${path.cwd}/salt-root/pillar"
      path = "/srv/pillar"
    }
  }

  device {
    type = "disk"
    name= var.profile_salt_share
    properties = {
      source = "${path.cwd}/salt-root/salt"
      path = "/srv/salt"
    }
  }

  
}
