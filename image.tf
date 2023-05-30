resource "lxd_publish_image" "sample-image" {
  depends_on = [ lxd_container.sample-test ]

  container = "sample-test"
  aliases   = [ "sample_test_img" ]

  
}