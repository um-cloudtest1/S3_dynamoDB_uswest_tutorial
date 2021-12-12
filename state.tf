terraform {
  backend "s3" {
    bucket         = "terraform-umcs-umcloudtest"  # changed
    dynamodb_table = "terraform-umcs-umcloudtest-lock"  # changed
    key            = "terraform.umcs" # the key inside the bucket
    region         = "us-west-2"   # changed
    encrypt        = true
  }
}
