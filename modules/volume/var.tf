variable "storages" {
 description = "A map of lxd storages"
    type           = map(object({
    pool         = string
  }))
  
}  

variable "pools" {
 description = "A map of lxd storages"
    type           = set(string)
  
}