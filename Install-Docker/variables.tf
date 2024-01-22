variable "ami_id" {
  default = "ami-0f3c7d07486cad139"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "Roboshop"
    Terraform   = true
    Enveronment = "DEV"
  }

}

variable "instance_names" {
  default = "Docker"
}