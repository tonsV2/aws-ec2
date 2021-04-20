resource "aws_eip" "ec2" {
  vpc = true
  instance = aws_instance.ec2.id
}
