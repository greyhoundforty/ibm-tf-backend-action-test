variable "ibmcloud_api_key" {
  type        = string
  description = "IBM Cloud API key to create resources"
  default     = ""
}

variable "region" {
  type        = string
  description = "The region where the VPC resources will be deployed."
  default     = ""
}

variable "ssh_key" {
  type        = string
  description = "The SSH Key that will be added to the compute instances in the region."
  default     = ""
}

variable "resource_group" {
  type        = string
  description = "Resource group where resources will be deployed."
}

variable "name" {
  type        = string
  description = "Name for the VPC. This will be prepended to any associated resource names."
  default     = "gh-action"
}

variable "allow_ssh_from" {
  type        = string
  description = "An IP address, CIDR block, or a single security group identifier to allow incoming SSH connection to the bastion."
  default     = "0.0.0.0/0"
}

variable "os_image" {
  type        = string
  description = "OS Image to use for VPC instances. Default is currently Ubuntu 18."
  default     = "ibm-ubuntu-18-04-1-minimal-amd64-2"
}

variable "create_public_ip" {
  type        = bool
  description = "Whether to allocate a public IP address for the bastion instance."
  default     = true
}

variable "tags" {
  type        = list(string)
  description = "Tags that will be added to the deployed resources."
  default     = []
}

variable "commit" {
  type    = string
  default = ""
}

variable "access_key" {

}

variable "secret_key" {
}