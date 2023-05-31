resource "lxd_volume" "volume" {
  for_each = var.storages
  name = each.key
  pool = "${module.pool.storage_pools[each.value.pool].name}"
}


