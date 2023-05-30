resource "lxd_publish_image" "sample-image" {
  depends_on = [ lxd_container.sample-test ]

  container = "${lxd_container.sample-test.name}"
  aliases   = [ lxd_container.sample-test.name]

  
}