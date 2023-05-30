
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

  #   lxd_remote {
  #   name     = "lxd-server-1"
  #   scheme   = "https"
  #   address  = "10.1.1.8"
  #   password = "password"
  #   default  = true
  # }
}
