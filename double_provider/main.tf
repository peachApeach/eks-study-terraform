provider "aws" {
  region = "ap-southeast-1"
}

provider "aws" {
  alias = "seoul"
  region = "ap-northeast-2"
}

resource "aws_instance" "app_server1" {
  ami           = "ami-06b79cf2aee0d5c92"
  instance_type = "t2.micro"
}

resource "aws_instance" "app_server2" {
  provider      = aws.seoul
  ami           = "ami-0ea4d4b8dc1e46212"
  instance_type = "t2.micro"
}