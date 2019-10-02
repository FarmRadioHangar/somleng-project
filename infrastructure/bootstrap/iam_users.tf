resource "aws_iam_user" "loic" {
  name = "loic"
}

resource "aws_iam_group" "readonly_admin" {
  name = "readonly-admin"
}

resource "aws_iam_group_policy_attachment" "readonly_admin" {
  group      = aws_iam_group.readonly_admin.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_user_group_membership" "loic" {
  user = aws_iam_user.loic.name

  groups = [
    aws_iam_group.readonly_admin.name,
  ]
}


