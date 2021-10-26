variable "region" {
  description = "AWS cloud hosting region"
  type        = string
}

variable "profile" {
  description = "AWS account profile"
  default     = "default"
  type        = string
}

variable "environment" {
  description = "This is the environment where the webapp is deployed. qa, prod, or dev"
  type        = string
}

variable "project_name" {
  description = "name to identify the project purpose"
  type        = string
}

variable "general_tags" {
  description = "The project tags to use for unique resources tagging"
  type        = map(string)
}

