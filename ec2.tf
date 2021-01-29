resource "aws_instance" "ssh" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.ssh.key_name
  vpc_security_group_ids = [
    aws_security_group.ssh.id
  ]
}
