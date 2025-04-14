# Instructions: Place your variables below

variable "aws_region" {
  type        = string
  description = "The AWS region you wish to deploy your resources to."
  default     = "us-east-1"
}

variable "codestar_connection_arn" {
  description = "CodeStar Connection ARN for GitHub integration"
  type        = string
  default     = "arn:aws:codeconnections:us-east-1:273354636904:connection/5c6ddf43-8daf-4a6b-828a-9376e12b1408"
}

