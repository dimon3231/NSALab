resource "yandex_compute_instance" "vm-cml2" {

  name        = "CML2"
  platform_id = "standard-v3"

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = "<идентификатор образа>"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.subnet-a.id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "<имя пользователя>:<содержимое SSH-ключа>"
  }
}

resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-a" {
  name           = "subnet1"
  v4_cidr_blocks = ["10.128.0.0/24"]
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.network-1.id}"
}
