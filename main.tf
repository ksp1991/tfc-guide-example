terraform{  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  access_key=""
  secret_key=""
  region  = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-09282971cf2faa4c9"
  instance_type = "t2.micro"
}
