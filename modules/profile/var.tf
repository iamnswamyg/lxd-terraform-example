variable "profile" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
  })
 
}
variable "storage" {
  description = "A map of salt configurations"
  type        = object({
    pool_name      = string
    volume_name    = string
  })
 
}
  

