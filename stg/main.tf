resource "aws_instance" "app_server" {
  ami = "ami-05803413c51f242b7"         
  instance_type = "t2.micro"
  
tags = var.vm_tags
}
