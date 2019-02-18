
resource "aws_iam_user" "my_user" {
  count = "${length(var.aws_iam_user)}"
  name  = "${element(var.aws_iam_user, count.index)}"
  path  = "/"
}

resource "aws_iam_group_membership" "gym_group_membership" {
  count = "${length(var.aws_iam_user)}"
  name  = "gym_group_membership"

  users = [
    "${element(var.aws_iam_user, count.index)}",
  ]

  group = "${element(var.aws_iam_group, 0)}"
}



