resource "aws_key_pair" "tf_project_key" {
  key_name   = "tf-project"
  public_key = file(var.inst_key_pub)
}