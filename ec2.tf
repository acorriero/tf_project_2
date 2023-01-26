resource "aws_instance" "tf_project_host" {
  ami                    = lookup(var.image_id, var.region)
  instance_type          = var.inst_type
  key_name               = aws_key_pair.tf_project_key.key_name
  subnet_id              = module.tf_project_vpc.public_subnets[0]
  count                  = var.inst_count
  vpc_security_group_ids = [aws_security_group.tf_project_host.id]

  tags = {
    Name    = var.inst_name
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update && sudo apt install -y apache2"
    ]
  }

  connection {
    user        = var.username
    private_key = file(var.inst_key_priv)
    host        = self.public_ip
  }
}

resource "aws_eip_association" "tf_project_eip_assoc" {
  instance_id   = aws_instance.tf_project_host[0].id
  allocation_id = module.tf_project_vpc.nat_ids[0]
}
