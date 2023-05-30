resource "lxd_storage_pool" "pool" {
  name = var.pool_name
  driver = var.pool_driver
  config = {
    source = var.pool_source
  }

  
}