resource "lxd_storage_pool" "salt_pool" {
  name = var.salt-network.pool_name
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${var.salt-network.pool_name}"
  }
}