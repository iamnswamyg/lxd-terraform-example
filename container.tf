resource "lxd_container" "sample-test" {
  name      = var.container_name
  image     = var.image_name
  ephemeral = var.image_ephemeral
  profiles  = [lxd_profile.sample_profile.name]
  device {
    name = var.volume_name
    type = "disk"
    properties = {
      path = var.volume_path
      source = lxd_volume.sample_volume.name
      pool = lxd_storage_pool.sample_pool.name
    }
  }
  start_container = false
  
}

