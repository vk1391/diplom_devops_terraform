output "access_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  sensitive = true
}
output "secret_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  sensitive = true
}
output "internal_ip_address_node01_yandex_cloud" {
  value = "${yandex_compute_instance.node1.network_interface.0.nat_ip_address}"
}
output "internal_ip_address_node02_yandex_cloud" {
  value = "${yandex_compute_instance.node2.network_interface.0.nat_ip_address}"
}
output "internal_ip_address_node03_yandex_cloud" {
  value = "${yandex_compute_instance.node3.network_interface.0.nat_ip_address}"
}