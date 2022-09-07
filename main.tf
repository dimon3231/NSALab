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
}

resource "yandex_resourcemanager_cloud_iam_binding" "admin" {
  cloud_id = "b1gdoa22q40ihgrf3cc1"
  role     = "storage.editor"
  members = [
    "serviceAccount:ajelguvuftg771n1hih6",
  ]
}

resource "yandex_compute_instance" "vm-1" {
  name = "CML2"

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = "fd87va5cc00gaq2f5qfb"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}