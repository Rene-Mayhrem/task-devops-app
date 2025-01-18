output "frontend_url" {
  value = "http://${aws_s3_bucket.frontend.bucket}.s3.amazonaws.com/index.html"
}

output "backend_url" {
  value = "http://${aws_api_gateway.rest_api.invoke_url}/api"
}

output "database_endpoint" {
  value = aws_db_instance.default.endpoint
}