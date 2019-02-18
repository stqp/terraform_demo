provider "aws" {
  region = "ap-northeast-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  count         = 1
  ami           = "ami-785c491f" # Ubuntu 16.04 LTS official ami
  instance_type = "t2.micro"

  tags {
    Name = "stqp_tf""
  }
}
