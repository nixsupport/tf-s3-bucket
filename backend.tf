terraform {
  backend "s3" {
    bucket = "hoopp-isg-it4i-balkaran-tf"
    key    = "terraform/tf-state"
    region = "us-east-1" 
  }
}