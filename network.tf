data "aws_eip" "ssh" {
  id = var.eip
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ssh.id
  allocation_id = data.aws_eip.ssh.id
}
