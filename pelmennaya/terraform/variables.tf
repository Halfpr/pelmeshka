variable "image_id" {
  description = "image_id"
  type        = string
  default     = "fd82nvvtllmimo92uoul"
}

variable "name" {
  description = "name of VM"
  type        = string
  default     = "momo"
}

variable "name2" {
  description = "name of VM"
  type        = string
  default     = "momo-store-anar-amrahov"
}

variable "name3" {
  description = "name of VM"
  type        = string
  default     = "momo-store-2-anar-amrahov"
}

variable "subnet_id" {
  description = "subnet_id"
  type        = string
  default     = "e9bfv8nmclvnr8mkim7d"
}

variable "nat" {
  description = "NAT"
  type        = bool
  default     = true
}

variable "cores" {
  description = "cores"
  type        = number
  default     = 2
}

variable "memory" {
  description = "memory"
  type        = number
  default     = 2
}

variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  default     = "b1g67tn9u6mssntvasrg"
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
  default     = "b1gvebcr584umht9vt8f"
}

variable "zone" {
  description = "Yandex Cloud zone"
  type        = string
  default     = "ru-central1-a"
}
