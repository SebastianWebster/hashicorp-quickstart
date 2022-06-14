resource "aws_instance" "app_server" {
  ami           = "ami-0c6120f461d6b39e9"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}