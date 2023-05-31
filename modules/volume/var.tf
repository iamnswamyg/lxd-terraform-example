variable "storage" {
  description = "A map of lxd storages"
  type        = object({
    pool_name      = string
    volume_name    = string
  })
 
}

  

