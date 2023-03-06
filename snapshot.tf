resource "crafting_snapshot" "home" {
  name = "tzz-home"
  folder  = ""
  type = "HOME"
  includes = [
    ".vscode-remote/extensions",
    ".vscode-remote/data/User/extensions.json",
    "go",
    ".bashrc"
  ]

  workspace =  "prepare-snapshot"
  app_definition = <<-EOT
  workspaces:
  - name: prepare-snapshot
    packages:
      - name: golang
        version: 1.18.3
  EOT

  script = <<EOT
  #!/bin/bash
  set -ex
  sudo apt update 
  sudo apt-get install psmisc
  echo 'export PATH=$PATH:$GOPATH/bin' >> /home/owner/.bashrc
  /opt/sandboxd/vscode/bin/code-server-cs --install-extension golang.go
  go install golang.org/x/tools/gopls@latest
  curl -LO https://github.com/VSCodeVim/Vim/releases/download/v1.24.2/vim-1.24.2.vsix
  /opt/sandboxd/vscode/bin/code-server-cs --install-extension vim-1.24.2.vsix
  EOT
}
