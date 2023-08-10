terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.77.0"
    }
  }
}

provider "google" {
  project     = "terraform-pubsub"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = var.SERVICE_ACCOUNT_KEY
}