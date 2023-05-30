resource "lxd_storage_pool" "sample_pool" {
  name = "sample_pool"
  driver = "dir"
  config = {
    source = "/var/snap/lxd/common/lxd/storage-pools/sample_pool"
  }

  
}