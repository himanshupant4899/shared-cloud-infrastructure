resource "aws_security_group" "default" {
  name        = "default_security_group"
  vpc_id      = aws_vpc.tooling.id
  description = "default sg with no outbound access"

  ingress {
    protocol    = -1
    self        = true
    from_port   = 0
    to_port     = 0
    description = "Allow traffic within the base SG"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = []
    description = "Block all outbound access"
  }
}