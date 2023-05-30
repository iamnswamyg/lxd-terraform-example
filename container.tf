resource "lxd_container" "salt-master" {
  name      = var.salt-master
  image     = var.master_image
  ephemeral = false
  profiles  = [lxd_profile.profile_name.name]
  device {
    name = var.volume_name
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
      "ipv4.address" = var.salt_ip
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
  start_container = true
  
}

resource "lxd_container" "salt-minion" {
  name      = var.salt-minion
  image     = var.minion_image
  ephemeral = false
  profiles  = [lxd_profile.profile_name.name]
  device {
    name = var.volume_name
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
      "ipv4.address" = var.minion_ip
    }
  }
  start_container = true
  
}


