resource "lxd_storage_pool" "pool" {
  name = var.profile.pool_name
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${var.profile.pool_name}"
  }
}