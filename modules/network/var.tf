variable "networks" {
  description = "A map of salt configurations"
    type           = map(object({
    ipv4           = string
    ipv4_enabled   = bool
    ipv6           = string
    ipv6_enabled   = bool
  }))
  
}

