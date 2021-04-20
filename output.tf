output "ssh" {
  value = "ssh -i ${var.public_key} ${var.username}@${aws_eip.ec2.public_ip}"
}
