resource "aws_iam_user" "multiusers"{
    name = each.key
    for_each = toset([
        "Ron",
        "Sam",
        "Billy"
    ])
}