terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "y0_AgAAAAAaFAJ0AATuwQAAAADOMHmExYlJPA8OS0uhfDO12gIcYRYCm54"
  cloud_id  = "b1gdoa22q40ihgrf3cc1"
  folder_id = "b1g9vrtrrnnt93cet0q5"
  zone      = "ru-central1-a"
  max_retries = 600
}