output "ip" { 
  value = ["${module.terraform-vra-win2012R2.ip}"] 
} 
output "server_name" { 
  value = ["${module.terraform-vra-win2012R2.server_name}"] 
}