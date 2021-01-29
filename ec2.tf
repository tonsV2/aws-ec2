resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.ec2.key_name
  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]
  subnet_id = aws_subnet.ec2.id
}
