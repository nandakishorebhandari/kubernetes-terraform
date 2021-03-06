provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "module_aws_ec2" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  subnet_id              = "${var.subnet_id}"
  user_data              = "${var.user_data}"
  iam_instance_profile   = "${var.iam_instance_profile}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.volume_size}"
  }

  tags {
    Name        = "${var.tag_name}"
    Description = "${var.tag_description}"
    Environment = "${var.tag_environment}"
  }
}
