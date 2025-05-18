### module/security-group/outputs.tf ###

output "security_group_ids" {
  description = "List of security group IDs"
  value       = azurerm_network_security_group.sg-app-servers.id
}