variable "vpc_name" {
  default = "learning_vpc"
}

variable "azs" {
  description = "This is common azs for all learning"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}