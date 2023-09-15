variable "cidr_block"{

}

variable "project_name"{

}

variable "common_tags"{
    default = {}
}

variable "vpc_tags"{
    default = {}
}

variable "enable_dns_hostnames"{
    default = true
}

variable "enable_dns_support"{
    default = true
}

variable "ig_tags" {
    default = {}
}

variable "public_subnet_cidr" {
    type = list
    validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "please enter a 2 valid public cidr"
  }
}

variable "private_subnet_cidr" {
    type = list
    validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "please enter a 2 valid private cidr"
  }
    
}

variable "database_subnet_cidr" {
    type = list
    validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "please enter a 2 valid database cidr"
  } 
}