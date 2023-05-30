
terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
      
    }
  }
}
provider "lxd" {
    generate_client_certificates = true
    accept_remote_certificate    = true
}
module "salt" {
  source = "./modules/salt-network"

  salt-network = {
      profile_name   = "salt-profile"
      network_name   = "salt-network"
      pool_name      = "salt-pool"
      volume_name    = "salt-volume"
      ipv4   = "192.168.0.1/24"   
  }
salt-instances = {
    instance1 = {
      name           = "salt-master"
      image          = "salt-master"
      ip             = "192.168.0.2"
      master         = true
    }
    instance2 = {
      name           = "salt-minion1"
      image          = "salt-minion"
      ip             = "192.168.0.3"
      master         = false
    }
    instance3 = {
      name           = "salt-minion2"
      image          = "salt-minion"
      ip             = "192.168.0.4"
      master         = false
    }
  }
}
