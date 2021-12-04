############################################# Variable Declaration #############################################
variable "ami_name" {
  default = "webserver"
}

variable "access_key" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "secret_key" {
  default = "AWS_SECRET_ACCESS_KEY"
}

############################################# Image Creation #############################################

source "amazon-ebs" "webserver" {
  ami_name                    = "${var.ami_name}"
  access_key                  = "${var.access_key}"
  secret_key                  = "${var.secret_key}"
  region                      = "ap-south-1"
  instance_type               = "t2.micro"
  source_ami                  = "ami-052cef05d01020f1d"
  associate_public_ip_address = true

}

build {

  name = "linux-builder"
  source "source.amazon-ebs.webserver" {
    ssh_username = "ec2-user"
  }
}
