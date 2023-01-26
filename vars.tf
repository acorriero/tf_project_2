variable "region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "tf-project-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnet" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet" {
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable image_id {
  type = map
  default = {
    us-east-1  = "ami-00874d747dde814fa"
    us-east-2  = "ami-06397100adf427136"
    us-east-3  = "ami-009110a2bf8d7dd0a"
  }
}

variable "inst_type" {
  default = "t2.micro"
}

variable "inst_name" {
  default = "tf-project-host"
}

variable "inst_key_pub" {
  
}

variable "inst_key_priv" {
  
}

variable "inst_count" {
  default = "1"
}

variable "myip" {
  
}

variable "username" {
  default = "ubuntu"
}

