variable "region" {
  description = "Region where infrastructure was created"
  type = string
  default = "eu-west-2"
}

variable "secret_key" {
  description = "Secret key of the IAM user"
  sensitive = true
  type = string
}

variable "access_key" {
  description = "Access key of the IAM user"
  sensitive = true
  type = string
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "CIDR block for the VPC"
  type = string
}

variable "main_subnet" {
  default = "10.0.0.0/24"
  description = "Main subnet"
  type = string
}
  
variable "subnet_zone" {
  default = "eu-west-2a"
  description = "subnet availabilty zone"
  type = string
}

variable "main_vpc_name" {  
}

variable "my_public_ip" { 
}

variable "ssh_public_key" {
}