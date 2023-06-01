resource "lxd_volume" "volume" {
  for_each = var.storages
  name = each.key
  pool = "${lxd_storage_pool.pool[each.value.pool].name}"
}


