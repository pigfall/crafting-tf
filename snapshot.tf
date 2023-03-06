resource "crafting_snapshot" "base" {
  name = "tzz-base"
  folder  = ""
  type = "WORKSPACE"
  script = <<EOT
  #!/bin/bash
  sudo apt update 
  sudo apt-get install psmisc
  EOT
}
