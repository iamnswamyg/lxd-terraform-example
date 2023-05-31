variable "profiles" {
  description = "A map of salt configurations"
    type           = map(object({
    pool         = string
  }))
  
}
variable "pools" {
 description = "A map of lxd storages"
    type           = set(string)
  
}

variable "storages" {
 description = "A map of lxd storages"
    type           = map(object({
    volume         = string
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
    image          = string
    network        = string
    profile        = string
    pool           = string
    volume         = string
    ip             = string
    master         = bool
  }))
  
}
