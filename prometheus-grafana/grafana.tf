
resource "aws_instance" "grafana" {
  ami                    = "ami-0d593311db5abb72b"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0cccebfddedd68a4c"
  vpc_security_group_ids = [aws_security_group.grafana.id]
  key_name               = "ram"
    user_data              = file("grafana.sh")
     
  tags = {
    Name = "grafana"
  }
}