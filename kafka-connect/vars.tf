variable "ACCESS_KEY" {}
variable "SECRET_KEY" {}

variable "AMI" {
  type = map(string)
  default = {
    eu-west-1 = "ami-0bb3fad3c0286ebd5"
  }
}

variable "REGION" {
  default = "eu-west-1"
}

variable "INSTANCE_TYPE" {
  default = "t3.large"
}

variable "KEY_NAME" {
  default = "DATA_LAKE_KAFKA_CONNECT"
}

variable "TAGS" {
  default = "DATA_LAKE_KAFKA_CONNECT"
}

variable "COUNT" {
  default = "1"
}
