variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default     = "terraform-pubsub"
}

variable "region" {
  description = "The region to deploy to"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy to"
  type        = string
  default     = "us-central1-c"
}
