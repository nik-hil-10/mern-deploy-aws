# =============================================================================
# IAM Roles & Instance Profiles for EC2
# =============================================================================

# ---------- IAM Role ----------

resource "aws_iam_role" "ec2_role" {
  name = "${var.project_name}-EC2-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Name = "${var.project_name}-EC2-Role"
  }
}

# ---------- Attach SSM Managed Instance Core Policy ----------
# This allows SSM Session Manager access as a fallback to SSH

resource "aws_iam_role_policy_attachment" "ssm_policy" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# ---------- Instance Profile ----------

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.project_name}-EC2-Profile"
  role = aws_iam_role.ec2_role.name

  tags = {
    Name = "${var.project_name}-EC2-Profile"
  }
}
