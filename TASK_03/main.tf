resource "google_storage_bucket" "my_bucket" {
  name = "swapgcpbuck8140"
  location= "us-central1"
}


resource "google_storage_bucket_object" "sample_file" {
  name   = "sample.txt"
  bucket = google_storage_bucket.my_bucket.name
  source = "./my_file.txt"
}
