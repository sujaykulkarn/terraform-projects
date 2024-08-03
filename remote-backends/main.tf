resource "aws_instance" "webserver" {
  ami                    = "ami-04a81a99f5ec58529"
  instance_type          = "t2.micro"
  # Below Provisioner will be executed after the resource is created and if the provisioner is failed the on_failure will continue
  provisioner "local-exec" {
    on_failure = continue
    command = "echo Instance ${aws_instance.webserver .public_ip} Created! >> /tmp/ips.txt"
  }

  # Below Provisioner will be executed after the resource is destroyed
  provisioner "local-exec" {
    when = destroy
    command = "echo Instance ${aws_instance.webserver .public_ip} Destroyed! >> /tmp/ips.txt"
  }
} 