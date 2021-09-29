provider "aws" {
  region  = "${var.region}"
  assume_role {
    role_arn     = "arn:aws:iam::XXX:role/3HTP-AdminsFull"
  }
}
