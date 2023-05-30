resource "lxd_storage_pool" "sample_pool" {
  name = var.pool_name
  driver = "dir"
  config = {
    source = var.pool_source
  }

  
}