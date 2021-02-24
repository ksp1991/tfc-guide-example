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
  access_key="AKIASOQOFZRY7JUYC34V"
  secret_key="mwJlvzbO4HICcLajrbx0qONVqFqcWjfSaj8e0UVh"
  region  = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-09282971cf2faa4c9"
  instance_type = "t2.micro"
}
