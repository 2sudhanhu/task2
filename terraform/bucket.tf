#create s3 bucket with public read
resource "aws_s3_bucket" "tripathi" {
bucket = "tripathi1"
acl    = "public-read"
}

#PUBLIC_READ
resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.tripathi.bucket}"
  key    = "IMG.jpg"
  source = "C:/Users/sudha/Desktop/task2/IMG.jpg"
  acl    = "public-read"
}