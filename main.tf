provider "vra7" { 
	username = "${var.username}" 
	password = "${var.password}" 
	tenant = "optumstg01" 
	host = "https://vra-stage.ms.ds.uhc.com" 
	insecure = "true" 
} 

//If you want to use production vRA - use vra.ms.ds.uhc.com with tennant optumprd01. (Blitz use vra-stage) 

module "terraform-vra-win2012R2" { 
	source = "git::https://github.optum.com/TerraformModules/terraform-vra-win2012R2.git" 
	environment = "DEV" 
	network_zone = "intranet" 
	interface_zone = "Intranet" 
	server_type = "APP" 
	cpu = "1" 
	memory = "2048" 
	datacenter = "CTC" 
	askid = "UHGWM110-006890" 
	dr_code = "DR-101" 
	msid_search = "sgupt186" 
	msid = "sgupt186" 
	user_group = "SED_OGS_OSPLM_ARK" 
	disk = "50" 
	resilience_zone = "None" 
	reservation_policy_id = "95c5f016-8c6d-4015-8390-4eef2da71b61" 
	count = 1
}
