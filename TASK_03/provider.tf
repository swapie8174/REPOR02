terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

provider "google" {
  project     = "sustained-flux-418006"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "./sustained-flux-418006-55a2a87ec1ab.json"
}