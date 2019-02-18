variable "aws_iam_user" {
  type = "list"

  default = [
    "user01",
    "user02",
  ]
}

variable "aws_iam_group" {
  type = "list"

  default = [
    "general-user",
    "administrator",
    "development",
    "operators",
  ]
}
