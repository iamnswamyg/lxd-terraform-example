resource "lxd_storage_pool" "pool" {
  name = var.network.pool_name
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${var.network.pool_name}"
  }
}