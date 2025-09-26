terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

variable "count" {
  type = number
}

variable "prefix" {
  type = string
}

variable "length" {
  type = string
}

variable "separator" {
  type = string
}

 resource "random_pet" "name1" {
  count     = var.count
  prefix    = var.prefix
  length    = var.length
  separator = var.separator
 }

output "random_pet_kind" {
  value = random_pet.name1[*].id
}
