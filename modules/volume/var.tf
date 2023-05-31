variable "storages" {
 description = "A map of lxd storages"
    type           = map(object({
    volume         = string
  }))
  
}  

variable "pools" {
 description = "A map of lxd storages"
    type           = set(string)
  
}