resource "aws_instance" "instance" {
  ami                         = "${var.ami}"
  instance_type               = "${var.bastion_instance_type}"
  availability_zone           = "${var.availability_zone}"
  key_name                    = "${var.key_name}"
  vpc_security_group_ids      = ["${var.vpc_security_group}"]
  subnet_id                   = "${var.ec2_subnet_id}"
  associate_public_ip_address = "true"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "30"
    delete_on_termination = true
  }
  tags = {
    Name         = "${var.bastion_name}-${var.createdBy}"
    MaintainedBy = "${var.maintainedBy}"
    CreatedBy    = "${var.createdBy}"
  }

}
