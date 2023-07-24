remote_state {
  backend = "s3"
  config = {
    bucket         = "terragrunt-demo"
    key            = "<TF-State file>.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}

inputs = {}