data "aws_eip" "ec2" {
  id = var.eip
}

resource "aws_eip_association" "ec2" {
  instance_id   = aws_instance.ec2.id
  allocation_id = data.aws_eip.ec2.id
}
