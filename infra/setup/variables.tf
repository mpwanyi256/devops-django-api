variable "tf_state_bucket" {
  default     = "devops-recipe-app-tf-state-mpwanyi"
  description = "Name of S3 bucket for storing TF state"
}

variable "tf_state_lock_table" {
  default     = "devops-recipe-api-tf-lock"
  description = "Name of Dynamo table for TF state locking"
}

variable "project" {
  default     = "recipe-app-api"
  description = "Project name for tagging resources"
}

variable "contact" {
  default     = "samuel@prodevkampala.com"
  description = "Contact for tagging resources"
}
