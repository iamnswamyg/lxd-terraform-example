resource "lxd_container" "sample-test" {
  name      = "sample-test"
  image     = "images:ubuntu/22.04"
  ephemeral = false
  profiles  = [lxd_profile.sample_profile.name]
  device {
    name = "sample_volume"
    type = "disk"
    properties = {
      path = "/lxd_temp"
      source = "${lxd_volume.sample_volume.name}"
      pool = "${lxd_storage_pool.sample_pool.name}"
    }
  }
  start_container = false
  
}

