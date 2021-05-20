
data "ibm_resource_group" "rg" {
  name = var.resource_group
}

data "ibm_is_zones" "mzr" {
  region = var.region
}

data "ibm_is_ssh_key" "regional_ssh_key" {
  count = var.ssh_key != "" ? 1 : 0
  name  = var.ssh_key
}

data "ibm_is_image" "default" {
  name = var.os_image
}