provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_security_group" "sg_allow_all_ssh" {
  name        = "sg_allow_all_ssh"
  description = "Allow all SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0e108df58de522101" # CentOS 7 x86_64 GenericCloud 1805
  instance_type = "t2.micro"
  key_name = "project7_aws_cn_north"
  security_groups = ["sg_allow_all_ssh"]
}
