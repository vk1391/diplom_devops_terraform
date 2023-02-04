terraform {
  required_version = ">= 0.13"
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}
provider "yandex" {
  token = var.yandex_token
  cloud_id  = var.yandex_cloudid
  folder_id = var.yandex_folder_id
  zone      = "ru-central1-a"
}
