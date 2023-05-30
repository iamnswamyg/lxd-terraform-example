variable "salt-master" {
  description = "Name of the LXD container"
  type        = string
  default     = "salt-master"
}
variable "salt-minion" {
  description = "Name of the LXD container"
  type        = string
  default     = "salt-minion"
}

variable "profile_name" {
  description = "Name of the LXD profile"
  type        = string
  default     = "salt-profile"
}

variable "network_name" {
  description = "Name of the LXD network"
  type        = string
  default     = "salt-network"
}

variable "pool_name" {
  description = "Name of the LXD storage pool"
  type        = string
  default     = "salt-pool"
}


variable "volume_name" {
  description = "Name of the LXD volume"
  type        = string
  default     = "salt-volume"
}

variable "profile_salt_share" {
  description = "Name of the LXD profile"
  type        = string
  default     = "salt-share"
}

variable "profile_pillar_share" {
  description = "Name of the LXD profile"
  type        = string
  default     = "pillar-share"
}

variable "master_image" {
  description = "Name of the LXD container image"
  type        = string
  default     = "salt-master"
}

variable "minion_image" {
  description = "Name of the LXD container image"
  type        = string
  default     = "salt-minion"
}

variable "network_ipv4" {
  description = "IPv4 address and subnet mask for the LXD network"
  type        = string
  default     = "192.168.0.1/24"
}

variable "salt_ip" {
  description = "IPv4 address and subnet mask for the LXD network"
  type        = string
  default     = "192.168.0.2"
}

variable "minion_ip" {
  description = "IPv4 address and subnet mask for the LXD network"
  type        = string
  default     = "192.168.0.3"
}




