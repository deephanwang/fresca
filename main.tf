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

  # subnet_id = "${var.subnet_id}"
  # user_data = "${file(var.user_data)}"

  tags {
    created_by = "${lookup(var.tags,"created_by")}"
    Name = "${var.instance_name}-${count.index}"
  }
}
