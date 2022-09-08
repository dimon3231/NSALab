resource "yandex_storage_object" "test-object" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = "bucketforcml"
  key        = "cml2.vmdk"
  source     = "D:/VM/CML2/cml240_rev2-disk1.vmdk"
}

resource "yandex_compute_image" "image-1" {
  name       = "CML2"
  os_type    = "LINUX"
  source_url = "https://storage.yandexcloud.net/bucketforcml/cml2.vmdk"
  pooled     = "false"
}