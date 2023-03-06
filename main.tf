terraform {
  required_providers {
    crafting = {
      source = "registry.terraform.io/crafting-dev/sandbox"
    }
  }
}


provider "crafting" {
  org = var.sandbox_system.org
  server_url = var.sandbox_system.server_url
}

