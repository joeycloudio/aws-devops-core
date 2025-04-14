# Instructions: Place your variables below

variable "aws_region" {
  type        = string
  description = "The AWS region you wish to deploy your resources to."
  default     = "us-east-1"
}

variable "codestar_connection_arn" {
  description = "CodeStar Connection ARN for GitHub integration"
  type        = string
  default     = "arn:aws:codeconnections:us-east-1:273354636904:connection/6a8bea0d-e590-45d6-9fd1-5412ca3c4b4a"
}

