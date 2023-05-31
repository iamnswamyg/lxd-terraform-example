resource "lxd_storage_pool" "pool" {
  name = var.storage.pool_name
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${var.storage.pool_name}"
  }
}