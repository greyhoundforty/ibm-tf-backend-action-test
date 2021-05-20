terraform {

  backend "s3" {
    bucket                      = "github-actions-remote-state-bucket"
    key                         = "testing/global.tfstate"
    region                      = "us-south"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "s3.us-south.cloud-object-storage.appdomain.cloud"
  }
}