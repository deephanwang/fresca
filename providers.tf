provider "aws" {
  profile = "${var.aws_profile}"
  region = "${var.aws_region}"

  access_key = ""
  secret_key = ""
}
