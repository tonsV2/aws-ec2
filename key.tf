resource "aws_key_pair" "ec2" {
  key_name = var.application_name
  public_key = file(var.public_key)
}
