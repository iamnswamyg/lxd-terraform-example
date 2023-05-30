variable "salt-network" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
    network_name   = string
    pool_name      = string
    volume_name    = string
    ipv4   = string
  })
  default = {
      profile_name   = "salt-profile"
      network_name   = "salt-network"
      pool_name      = "salt-pool"
      volume_name    = "salt-volume"
      ipv4   = "192.168.0.1/24"   
  }
}


variable "salt-instances" {
  description = "A map of salt configurations"
    type           = map(object({
    name           = string
    image          = string
    ip             = string
    master         = bool
  }))
  default = {
    instance1 = {
      name           = "salt-master"
      image          = "salt-master"
      ip             = "192.168.0.2"
      master         = true
    }
    instance2 = {
      name           = "salt-minion"
      image          = "salt-minion"
      ip             = "192.168.0.3"
      master         = false
    }
  }
}

variable "profile_salt_share" {
  description = "Name of the LXD profile"
  type        = string
  default     = "salt-share"
}

variable "profile_pillar_share" {
  description = "Name of the LXD profile"
  type        = string
  default     = "pillar-share"
}