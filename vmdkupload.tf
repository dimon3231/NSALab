resource "yandex_compute_image" "image-os" {
  name       = "cml2"
  os_type    = "LINUX"
  source_url = "https://storage.yandexcloud.net/bucketforcml/cml240_rev2-disk1.vmdk?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=YCAJEt1E0IRniX_iaHDl6VA-H%2F20220909%2Fru-central1%2Fs3%2Faws4_request&X-Amz-Date=20220909T181727Z&X-Amz-Expires=360000&X-Amz-Signature=68EF97A43D54DE869D1580B001082B5FBC1B7227C59AE5468194B93E97CB04BC&X-Amz-SignedHeaders=host"
  pooled     = "false"
}