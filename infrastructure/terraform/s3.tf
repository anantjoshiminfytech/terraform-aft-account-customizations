data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "infrastructure_bucket" {
  bucket = "aft-infrastructure-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
