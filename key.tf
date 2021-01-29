resource "aws_key_pair" "ssh" {
  key_name = var.applicaiton_name
  public_key = file(var.public_key)
}
