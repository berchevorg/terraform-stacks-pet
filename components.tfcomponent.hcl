required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
  }
  coreweave = {
    source  = "coreweave/coreweave"
    version = "0.10.1"
  }
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "3.0.1"
  }
  time = {
    source  = "hashicorp/time"
    version = "0.13.1"
  }
}

variable "instances" {
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
    instances = var.instances
    prefix    = var.prefix
    length    = var.length
    separator = var.separator
  }

  providers = {
    random = provider.random.this
  }
}
