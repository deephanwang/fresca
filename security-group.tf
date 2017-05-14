resource "aws_security_group" "fresca" {
	name = "fresca-security-group"
}

resource "aws_security_group_rule" "ssh_ingress" {
  security_group_id = "${aws_security_group.fresca.id}"
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
