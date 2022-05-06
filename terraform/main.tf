resource "hcloud_ssh_key" "default" {
  name       = "service"
  public_key = file("~/.ssh/service.pub")
}

resource "hcloud_server" "docker_registry" {
  depends_on  = [hcloud_ssh_key.default]
  count       = 1
  name        = "stream-node-${count.index}"
  image       = var.image
  server_type = var.instance_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  user_data   = file("./userdata.yaml")
}
