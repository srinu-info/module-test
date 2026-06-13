variable "ami" {
    default = "ami-0220d79f3f480ecf5"
}
variable "instance" {
  default = "t3.micro"
  validation {
    condition = contains(["t3.micro","t3.small","t3.medium"],var.instance)
    error_message = "Valid instance type is: t3.micro, small or medium only"
  }
}
variable "security_group_id" {
  default = ["sg-0193062f1ae30cede"]
}

variable "tags" {
  default = {
    Name="roboshop"
    Environment="dev"
  }
}