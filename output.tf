output "ssh" {
  value = "ssh -i ${var.public_key} ${var.username}@${aws_instance.ssh.public_ip}"
}
