# EC2 Instance in AZ1
resource "aws_instance" "web_a" {
  ami                  = "ami-0c55b159cbfafe1f0"
  instance_type        = "t2.micro"
  subnet_id            = aws_subnet.public_a.id
  security_groups      = [aws_security_group.web_sg.name]
  iam_instance_profile = aws_iam_instance_profile.web_profile.name
  user_data            = file("user_data.sh")

  tags = {
    Name = "WebServer-A"
  }
}

# EC2 Instance in AZ2
resource "aws_instance" "web_b" {
  ami                  = "ami-0c55b159cbfafe1f0"
  instance_type        = "t2.micro"
  subnet_id            = aws_subnet.public_b.id
  security_groups      = [aws_security_group.web_sg.name]
  iam_instance_profile = aws_iam_instance_profile.web_profile.name
  user_data            = file("user_data.sh")

  tags = {
    Name = "WebServer-B"
  }
}
