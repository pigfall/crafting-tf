terraform {
  required_providers {
    crafting = {
      source = "registry.terraform.io/crafting-dev/crafting"
    }
  }
}


provider "crafting" {
  org        = var.sandbox_system.org
  server_url = var.sandbox_system.server_url
}

