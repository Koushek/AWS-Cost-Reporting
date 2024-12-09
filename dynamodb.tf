resource "aws_dynamodb_table" "state_lock" {
  name         = "Lock-Files"
  billing_mode = "PAY_PER_REQUEST"  # On-demand mode
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
