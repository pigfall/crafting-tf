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

resource "crafting_app" "app-dev" {
  name = "tzz-dev3"
  definition = <<-EOT
    workspaces:
    - name: nvimrc
      base_snapshot: ${crafting_snapshot.base.name}
      checkouts:
        - path: nvimrc
          repo:
            git: https://github.com/pigfall/nvimc.git
          version_spec: main
      packages:
        - name: golang
          version: 1.18.3
  EOT

  depends_on = ["crafting_snapshot.base"]
}
