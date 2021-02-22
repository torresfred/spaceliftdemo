# this file will be populated into a client repo by tfWrapper if providers.tf
# does not exist already in the client repo

provider "archive" {}

provider "aws" {
  alias = "uswest2"
  region = "us-west-2"
}
