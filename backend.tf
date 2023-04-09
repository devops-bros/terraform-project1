terraform {
  backend "s3" {
    bucket = "terraform-project-nate01" # Please replace terraform-serge with your bucket name
    key    = "DevOps"
    region = "us-east-1"
  }
}