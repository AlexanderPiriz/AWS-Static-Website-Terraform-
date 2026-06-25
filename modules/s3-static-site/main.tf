resource "aws_aws_s3_bucket" "site" {
    bucket = var.bucket_name
}

resource "aws_s3_bucket_website_conifiguration" "site" {
    bucket = aws_aws_s3_bucket.site.id

    index_document {
        suffix = "index.html"
    }

    error_document {
        key = "error.html"
    }
}

resource "aws_s3_bucket_public_access_block" "site" {
    bucket = aws_aws_s3_bucket.site.id

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "site" {
    bucket = aws_aws_s3_bucket.site.id
    policy = data.aws_iam_policy_document.s3_policy.json
}
    
data "aws_iam_policy_document" "s3_policy" {
    statement {
        actions = ["s3:GetObject"]
        resources = ["${aws_aws_s3_bucket.site.arn}/*"]

        principals {
            type = "AWS"
            identifiers = ["*"]
        }
    }
}

module "s3_static_site" {

    source = "./modules/s3_static_site"
    bucket_name = "alexbuildcloud-site"
}

