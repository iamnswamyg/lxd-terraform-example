

# resource "local_file" "local_conf" {
#   for_each = var.instances

#   content = <<EOF
# interface: ${each.value.nic_devices[0].properties.ipv4}
# %{ if each.key == "salt-master" }auto_accept: True
# gpg_keydir: /etc/salt/gpgkeys
# file_roots:
#   base:
#     - /srv/saltstack/salt
# pillar_roots:
#   base:
#     - /srv/saltstack/pillar
#     - /srv/saltstack/global_pillar
# %{ else }master: ${local.salt_ip}
# id: ${each.key}
# %{ endif }
# EOF

#   filename = "${path.module}/scripts/${each.key}/local.conf"
# }
