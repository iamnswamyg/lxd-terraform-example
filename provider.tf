
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
module "network" {
  source = "./modules/network"

  network = {
      profile_name   = "salt-profile"
      network_name   = "salt-network"
      pool_name      = "salt-pool"
      volume_name    = "salt-volume"
      ipv4   = "192.168.0.1/24"   
  }

}




