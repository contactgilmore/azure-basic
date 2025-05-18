### module/subnets/outputs.tf ###

output "vn-subnet-1-id" {
  description = "ID of the first subnet"
  value       = azurerm_subnet.vn-subnet-1.id

}
output "vn-subnet-2-id" {
  description = "ID of the second subnet"
  value       = azurerm_subnet.vn-subnet-2.id
}