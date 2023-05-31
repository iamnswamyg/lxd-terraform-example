resource "lxd_volume" "volume" {
  for_each = var.storages
  name = each.value.volume
  pool = "${module.pool.storage_pools[each.key].name}"
}


