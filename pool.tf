resource "lxd_storage_pool" "salt_pool" {
  name = var.pool_name
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${var.pool_name}"
  }
}