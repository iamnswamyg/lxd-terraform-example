variable "container_name" {
  description = "Name of the LXD container"
  type        = string
  default     = "sample-test"
}

variable "image_name" {
  description = "Name of the LXD container image"
  type        = string
  default     = "images:ubuntu/22.04"
}

variable "image_ephemeral" {
  description = "Whether the LXD container should be ephemeral"
  type        = bool
  default     = false
}

variable "profile_name" {
  description = "Name of the LXD profile"
  type        = string
  default     = "sample_profile"
}

variable "volume_name" {
  description = "Name of the LXD volume"
  type        = string
  default     = "sample_volume"
}

variable "volume_path" {
  description = "Path of the LXD volume"
  type        = string
  default     = "/lxd_temp"
}

variable "pool_name" {
  description = "Name of the LXD storage pool"
  type        = string
  default     = "sample_pool"
}

variable "pool_source" {
  description = "Source path for the LXD storage pool"
  type        = string
  default     = "/var/snap/lxd/common/lxd/storage-pools/sample_pool"
}

variable "network_name" {
  description = "Name of the LXD network"
  type        = string
  default     = "sample_network"
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

variable "image_alias" {
  description = "Alias for the published LXD image"
  type        = string
  default     = "sample_test_img"
}
