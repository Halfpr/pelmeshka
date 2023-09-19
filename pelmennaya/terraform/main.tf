terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">=0.87.0"
    }
  }

    backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "pelmennaya-terraform-state"
    region     = "ru-central1"
    key        = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    }
}

resource "yandex_compute_instance" "vm-1" {
  name = var.name

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }
  
  scheduling_policy {
    preemptible = false
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = "${file("meta.yml")}"
  }

}


resource "yandex_compute_instance" "vm-2" {
  name = var.name2

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  scheduling_policy {
    preemptible = false
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = "${file("meta.yml")}"
  }

}


resource "yandex_compute_instance" "vm-3" {
  name = var.name3

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  scheduling_policy {
    preemptible = false
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    user-data = "${file("meta.yml")}"
  }

}


output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}
output "external_ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}
