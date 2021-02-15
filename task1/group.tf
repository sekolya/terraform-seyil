resource "aws_iam_group" "Developer" {
    name = "Developer"
}
resource "aws_iam_group" "Management" {
    name = "Management"
}

resource "aws_iam_group_membership" "Developers_team" {
    name = "Developer-group-membership"
    users = [
        "${aws_iam_user.Bob.name}",
        "${aws_iam_user.Tim.name}",
        "${aws_iam_user.Ben.name}"
    ]
    group = aws_iam_group.Developer.name
}

resource "aws_iam_group_membership" "Management_team" {
    name = "Management-group-membership"
    users = [
    
        "${aws_iam_user.Ben.name}"
    ]
    group = aws_iam_group.Management.name
}

