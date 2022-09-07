resource "yandex_storage_object" "test-object" {
  access_key = "YCAJESfkWis3Qz4bYtPT0owWu"
  secret_key = "YCPQmpjm5o42LSecMqFzfgYJd_8lZGf0HK-EgJLg"
  bucket     = "bucket1"
  key        = "cml2.vmdk"
  source     = "D:/VM/CML2/cml240_rev2-disk1.vmdk"
}
