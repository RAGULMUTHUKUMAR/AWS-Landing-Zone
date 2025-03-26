resource "aws_iam_role" "security_role" {
  name = "SecurityAdmin"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { AWS = "arn:aws:iam::${aws_organizations_account.security_account.id}:root" }
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_policy" "security_policy" {
  name        = "SecurityPolicy"
  description = "Policy for Security Admin Role"
  policy      = file("security-policy.json")
}

resource "aws_iam_role_policy_attachment" "attach_security_policy" {
  role       = aws_iam_role.security_role.name
  policy_arn = aws_iam_policy.security_policy.arn
}
