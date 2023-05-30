variable "profile" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
    pool_name      = string
    volume_name    = string
  })
 
}
variable "network" {
  description = "A map of salt configurations"
  type        = object({
    network_name   = string
    ipv4   = string
  })
 
}

variable "instances" {
  description = "A map of salt configurations"
    type           = map(object({
    name           = string
    image          = string
    ip             = string
    master         = bool
  }))
  
}
