#output "access_key" {
#  value = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#  sensitive = true
#}
#output "secret_key" {
#  value = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
#  sensitive = true
#}
output "internal_ip_address_node001_yandex_cloud" {
  value = "${yandex_compute_instance.node01.network_interface.0.nat_ip_address}"
}
output "internal_ip_address_node002_yandex_cloud" {
  value = "${yandex_compute_instance.node02.network_interface.0.nat_ip_address}"
}
output "internal_ip_address_node003_yandex_cloud" {
  value = "${yandex_compute_instance.node03.network_interface.0.nat_ip_address}"
}
