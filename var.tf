variable "profile" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
    pool_name      = string
    volume_name    = string
  })
 
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
    network_name   = string
    ip             = string
    master         = bool
  }))
  
}
