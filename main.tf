provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0ddc798b3f1a5117e"
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sg-0af37b58629133ca9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
