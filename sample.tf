resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}


data "aws_security_group" "selected" {
 name = "allow-all"
 }

 output "securitygroup_id"{
 value = data.aws_security_group.selected.id
 }
