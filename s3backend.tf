terraform {
backend "s3" {
bucket = "pankaj123-bucket"
key = "pankajkey-network-state"
region = "us-east-1"
}
}

