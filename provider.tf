
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

  profiles = var.profiles
  storages = var.storages
  pools = var.pools

}


module "network" {
  source = "./modules/network"

   networks = var.networks
   
    
  }
    
    


  





