resource "aws_instance" "app_server" {
  ami = "ami-0688ba7eeeeefe3cd"         
  instance_type = "t2.micro"
  
tags = var.vm_tags
}