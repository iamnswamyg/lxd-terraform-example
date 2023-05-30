resource "lxd_container" "container" {
  name      = var.container_name
  image     = var.image_name
  ephemeral = var.image_ephemeral
  profiles  = [lxd_profile.profile.name]
  device {
    name = var.volume_name
    type = "disk"
    properties = {
      path = var.volume_path
      source = lxd_volume.volume.name
      pool = lxd_storage_pool.pool.name
    }
  }
  start_container = true
  
}

