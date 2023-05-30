variable "profile" {
  description = "A map of salt configurations"
  type        = object({
    profile_name   = string
    pool_name      = string
    volume_name    = string
  })
 
}

  

