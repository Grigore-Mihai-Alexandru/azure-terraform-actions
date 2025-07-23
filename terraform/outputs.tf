output "private_ips" {
  value = [for nic in azurerm_network_interface.main : nic.private_ip_address]
}

output "public_ips" {
  value = [for ip in azurerm_public_ip.vm_public_ip : ip.ip_address]
}
