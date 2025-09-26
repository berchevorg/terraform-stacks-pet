required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
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

provider "random" "this" {}

component "pet" {
  source = "./pet"

  inputs = {
    count     = var.count
    prefix    = var.prefix
    length    = var.length
    separator = var.separator
  }

  providers = {
    random = provider.random.this
  }
}
