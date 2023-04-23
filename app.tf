resource "crafting_template" "nvimc" {
  name       = "tzz-nvimc"
  definition = <<-EOT
    workspaces:
    - name: nvimc
      home_snapshot: ${crafting_snapshot.home.name}
      checkouts:
        - path: nvimc
          repo:
            git: https://github.com/pigfall/nvimc.git
          version_spec: main
      packages:
        - name: golang
          version: 1.18.3
      env:
        - GOPATH=/home/owner/go
  EOT

  depends_on = ["crafting_snapshot.home"]
}

resource "crafting_template" "curdboy" {
  name       = "tzz-curdboy"
  definition = <<-EOT
    workspaces:
    - name: curdboy
      home_snapshot: ${crafting_snapshot.home.name}
      checkouts:
        - path: curdboy
          repo:
            git: https://github.com/pigfall/curdboy.git
          version_spec: main
      packages:
        - name: golang
          version: 1.18.3
      env:
        - GOPATH=/home/owner/go
  EOT

  depends_on = ["crafting_snapshot.home"]
}
