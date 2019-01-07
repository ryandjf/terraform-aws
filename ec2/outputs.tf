output "all_public_dns" {
  value = ["${aws_instance.example.*.public_dns}"]
}
