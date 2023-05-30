
terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
      version = "1.9.1"
    }
  }
}
provider "lxd" {
    generate_client_certificates = true
    accept_remote_certificate    = true
}
module "salt" {
  source = "./modules/salt-network"
}
