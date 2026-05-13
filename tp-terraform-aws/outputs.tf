output "vpc_id" { value = aws_vpc.main.id }
output "instance_public_ip" { value = aws_instance.web.public_ip }
output "instance_public_dns" { value = aws_instance.web.public_dns }
output "ssh_command" { value = "ssh -i ~/.ssh/tp_terraform ubuntu@${aws_instance.web.public_ip}" }
output "s3_bucket_name" { value = aws_s3_bucket.assets.bucket }
