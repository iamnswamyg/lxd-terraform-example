variable "profiles" {
  description = "A map of salt configurations"
  type = map(object({
    pool_devices = list(object({
      name       = string
      properties = object({
        pool           = string
        path           = string
      })
    }))
    share_devices = list(object({
      name       = string
      properties = object({
        source           = string
        path           = string
      })
    }))
  }))
}
variable "pools" {
 description = "A map of lxd storages"
    type           = map(object({
    driver         = string
  }))
  
}

variable "storages" {
 description = "A map of lxd storages"
    type           = map(object({
    pool         = string
  }))
  
} 
variable "networks" {
  description = "A map of salt configurations"
    type           = map(object({
    ipv4           = string
    ipv4_enabled   = bool
    ipv6           = string
    ipv6_enabled   = bool
  }))
  
}

variable "instances" {
  description = "A map of salt configurations"
    type           = map(object({
    name           = string
    ephemeral      = bool
    image          = string
    profile        = string
    start          = bool
    pool_devices = list(object({
      volume       = string
      properties = object({
        pool           = string
        path           = string
      })
    }))
    share_devices = list(object({
      name       = string
      properties = object({
        source           = string
        path           = string
      })
    }))
    nic_devices = list(object({
      name       = string
      properties = object({
        network        = string
        ipv4           = string
      })
    }))
  }))
    
  
}




