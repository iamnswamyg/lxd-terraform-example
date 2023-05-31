output "profile_names" {
  value = { for profile in lxd_profile.profile : profile.name => profile }
}

output "storage_volumes" {
  value = module.volume.storage_volumes 
}

output "storage_pools" {
  value = module.volume.storage_pools 
}



