variable "salt-network" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
    network_name   = string
    pool_name      = string
    volume_name    = string
    ipv4   = string
  })
 
}
variable "salt-instances" {
  description = "A map of salt configurations"
    type           = map(object({
    name           = string
    image          = string
    ip             = string
    master         = bool
  }))
  
}