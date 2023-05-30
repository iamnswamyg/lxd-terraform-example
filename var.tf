variable "container_name" {
  description = "Name of the LXD container"
  type        = string
  default     = "salt-master"
}

variable "profile_name" {
  description = "Name of the LXD profile"
  type        = string
  default     = "salt-profile"
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

variable "image_alias" {
  description = "Alias for the published LXD image"
  type        = string
  default     = "salt-img"
}

variable "volume_name" {
  description = "Name of the LXD volume"
  type        = string
  default     = "salt-volume"
}

variable "network_name" {
  description = "Name of the LXD network"
  type        = string
  default     = "salt-network"
}

variable "image_name" {
  description = "Name of the LXD container image"
  type        = string
  default     = "salt-master"
}

variable "image_ephemeral" {
  description = "Whether the LXD container should be ephemeral"
  type        = bool
  default     = false
}

variable "volume_path" {
  description = "Path of the LXD volume"
  type        = string
  default     = "/lxd_temp"
}

variable "pool_name" {
  description = "Name of the LXD storage pool"
  type        = string
  default     = "pool"
}
variable "pool_driver" {
  description = "Driver of the LXD storage pool"
  type        = string
  default     = "dir"
}

variable "pool_source" {
  description = "Source path for the LXD storage pool"
  type        = string
  default     = "/var/snap/lxd/common/lxd/storage-pools/pool"
}

variable "network_ipv4" {
  description = "IPv4 address and subnet mask for the LXD network"
  type        = string
  default     = "192.168.0.1/24"
}

variable "network_ipv4_nat" {
  description = "Enable NAT for IPv4 in the LXD network"
  type        = bool
  default     = true
}

variable "network_ipv6" {
  description = "IPv6 address and subnet mask for the LXD network"
  type        = string
  default     = "none"
}

variable "network_ipv6_nat" {
  description = "Enable NAT for IPv6 in the LXD network"
  type        = bool
  default     = false
}


