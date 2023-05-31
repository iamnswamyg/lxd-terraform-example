resource "lxd_storage_pool" "pool" {
  for_each = var.pools
  name = each.value
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/${each.value}"
  }
}