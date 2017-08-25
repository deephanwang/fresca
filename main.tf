resource "aws_key_pair" "ssh" {
  key_name = "fresca"
  public_key = "${var.public_key}"
}

resource "aws_instance" "ec2_instance" {
  count = "${var.number_of_instances}"

  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.fresca.id}"]
  key_name = "fresca"

  root_block_device = {
    volume_type = "${var.root_volume_type}"
    volume_size = "${var.root_volume_size}"
    delete_on_termination = true
  }

  tags {
    created_by = "${lookup(var.tags,"created_by")}"
    Name = "${var.instance_name}-${count.index}"
  }
}
