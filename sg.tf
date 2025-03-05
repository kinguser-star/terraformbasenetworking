resource "aws_security_group" "allow_tls" {
  name        = "pankaj_allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.main-vpc.id}"
 
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main-vpc.cidr_block]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main-vpc.cidr_block]
  }

 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  tags = {
    Name = "pankaj_allow_tls"
  }
}
