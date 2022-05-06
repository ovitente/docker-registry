output "nodes_ips" {
  value = ["${hcloud_server.docker_registry.*.ipv4_address}"]
}
