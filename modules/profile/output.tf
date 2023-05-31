output "profile" {
  value = lxd_profile.profile_name.name
}
output "storage" {
  value = {
    pool=module.volume.storage.pool
    volume= module.volume.storage.volume
  }
}

