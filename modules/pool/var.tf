variable "pools" {
 description = "A map of lxd storages"
    type           = map(object({
    driver         = string
    source         = string
  }))
  
}