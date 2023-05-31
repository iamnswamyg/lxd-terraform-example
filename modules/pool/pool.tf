resource "lxd_storage_pool" "pool" {
  for_each = var.pools
  name = each.key
  driver = each.value.driver
  config = {
    source = "${each.value.source}/${each.key}"
  }
}