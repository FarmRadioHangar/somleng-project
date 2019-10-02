output "loic_user_arn" {
  value = aws_iam_user.loic.arn
}

output "infrastructure_bucket" {
  value = aws_s3_bucket.infrastructure.id
}

