resource "aws_iam_group" "Infosec" {
    name = "Infosec"
}


resource "aws_iam_group_membership" "Infosec_team" {
    name = "Infosec-group-membership"
    users = [
        "${aws_iam_user.Ron.name}",
        "${aws_iam_user.Sam.name}",
        "${aws_iam_user.Billy.name}"
    ]
    group = aws_iam_group.Infosec.name
}
resource "aws_iam_group_policy" "my_Infosec_policy" {
  name  = "my_Infosec_policy"
  group = aws_iam_group.Infosec.name


  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*",
                "account:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization",
                "account:ListRegions"
            ],
            "Resource": "*"
        }
    ]
})
}

