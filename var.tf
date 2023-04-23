variable "sandbox_system" {
  type = object({
    org        = string
    server_url = string
  })
}
