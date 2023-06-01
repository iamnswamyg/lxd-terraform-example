resource "lxd_storage_pool" "pool" {
  for_each = var.pools

  name   = each.key
  driver = each.value.driver

  config = each.value.driver != "btrfs" ? {
    source = "/var/snap/lxd/common/lxd/storage-pools/${each.key}"
  } : {}
}