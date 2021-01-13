resource "aws_s3_bucket" "lambda_deploy_packages" {
  bucket = "${var.project_main_prefix}-lambda-deploy-packages"
  acl    = "private"

  tags = {
    Name        = "Bucket for lambda packages"
    Environment = var.environment
  }

}