resource "yandex_compute_instance" "node1" {
  name = "node1"
  zone                      = "ru-central1-a"
  hostname                  = "node01.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 6
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "50"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat = true
    ip_address = "192.168.15.15"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
resource "yandex_compute_instance" "node2" {
  name = "node2"
  zone                      = "ru-central1-a"
  hostname                  = "node02.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "30"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat = true
    ip_address = "192.168.15.16"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
  depends_on = [
    yandex_vpc_subnet.subnet_terraform
  ]
}
resource "yandex_compute_instance" "node3" {
  name = "node3"
  zone                      = "ru-central1-a"
  hostname                  = "node03.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "30"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat = true
    ip_address = "192.168.15.17"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
  depends_on = [
    yandex_vpc_subnet.subnet_terraform
  ]
}
