resource "yandex_compute_instance" "node01" {
  name = "node01"
  zone                      = "ru-central1-a"
  hostname                  = "node001.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 6
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "20"
    }
  }

  network_interface {
    subnet_id = "e9br0gkblpm24uqq5up4"
    nat = true
    #ip_address = "192.168.15.15"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
resource "yandex_compute_instance" "node02" {
  name = "node02"
  zone                      = "ru-central1-a"
  hostname                  = "node002.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "10"
    }
  }

  network_interface {
    subnet_id = "e9br0gkblpm24uqq5up4"
    nat = true
    #ip_address = "192.168.15.16"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
resource "yandex_compute_instance" "node03" {
  name = "node03"
  zone                      = "ru-central1-a"
  hostname                  = "node003.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd83n3uou8m03iq9gavu"
      type = "network-nvme"
      size = "10"
    }
  }

  network_interface {
    subnet_id = "e9br0gkblpm24uqq5up4"
    nat = true
    #ip_address = "192.168.15.17"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
