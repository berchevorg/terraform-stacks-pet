terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

variable "length" {
  type = string
}

variable "separator" {
  type = string
}

 resource "random_pet" "name1" {
  length    = var.length
  separator = var.separator
 }

output "name1" {
  value = random_pet.name1.id
}
