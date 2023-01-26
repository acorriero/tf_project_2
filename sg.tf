resource "aws_security_group" "tf_project_host" {
  name        = "tf-project-sg"
  description = "Frontend host security group"
  vpc_id      = module.tf_project_vpc.vpc_id
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = var.myip
  }
  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = var.myip
  }
}