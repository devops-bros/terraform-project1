resource "aws_instance" "Jenkins" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  user_data              = file("jenkins.sh")
  subnet_id              = module.vpc-jenkins.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  associate_public_ip_address = true
  tags = {
    Name    = var.instance_name
    Env     = var.env
    Users   = "DevOps"
    Purpose = "Testing"
  }
  key_name = var.keypair
}