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



variable "storages" {
 description = "A map of lxd storages"
    type           = map(object({
    pool         = string
  }))
  
}  
  
  
variable "pools" {
 description = "A map of lxd storages"
    type           = map(object({
    driver         = string
    source         = string
  }))
  
}
