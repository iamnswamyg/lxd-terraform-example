
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
module "profile" {
  source = "./modules/profile"

  profile = {
      profile_name   = "salt-profile"
      pool_name      = "salt-pool"
      volume_name    = "salt-volume"  
  }

}
module "network" {
  source = "./modules/network"

   networks = {
    salt-network = {
      ipv4           = "192.168.0.1/24"
      ipv4_enabled   = true
      ipv6           = "none"
      ipv6_enabled   = false
    }
   
    
  }
    
    
  }

  





