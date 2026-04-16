#Create S3 Bucket
resource "aws_s3_bucket" "staticbucket" {
  bucket = var.bucketname
}


resource "aws_s3_bucket_ownership_controls" "staticbucket" {
  bucket = aws_s3_bucket.staticbucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "staticbucket" {
  bucket = aws_s3_bucket.staticbucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "staticbucket" {
  depends_on = [
    aws_s3_bucket_ownership_controls.staticbucket,
    aws_s3_bucket_public_access_block.staticbucket,
  ]

  bucket = aws_s3_bucket.staticbucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.staticbucket.id
  key    = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.staticbucket.id
  key    = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.staticbucket.id
  key    = "profile.png"
  source = "profile.png"
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.staticbucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

 depends_on = [ aws_s3_bucket.staticbucket ]
}


