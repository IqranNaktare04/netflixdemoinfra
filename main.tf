provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-091dccf4e2d272bae"
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sg-0af37b58629133ca9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Ansible", "dev-1", "dev-2", "Test-1", "Test-2", "Monitoring server"]
}
