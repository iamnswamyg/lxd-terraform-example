variable "network" {
  description = "A map of salt configurations"
  type        = object({
    network_name   = string
    ipv4   = string
  })
 
}