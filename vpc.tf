resource "yandex_vpc_network" "network_terraform" {
  name = "net_terraform1"
}
resource "yandex_vpc_subnet" "subnet_terraform" {
  name           = "sub_terraform"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.network_terraform.id}"
  v4_cidr_blocks = ["192.168.15.0/24"]
  depends_on = [
    yandex_vpc_network.network_terraform
  ]
}
resource "yandex_vpc_subnet" "subnet_terraform2" {
  name           = "sub_terraform2"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.network_terraform.id}"
  v4_cidr_blocks = ["192.168.16.0/24"]
  depends_on = [
    yandex_vpc_network.network_terraform
  ]
}