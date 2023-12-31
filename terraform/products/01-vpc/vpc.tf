resource "aws_vpc" "eks_vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = local.tags
}

resource "aws_subnet" "eks_subnet_az1" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.0.0.0/26"
  availability_zone = "ap-southeast-1a"

  tags = local.tags
}

resource "aws_subnet" "eks_subnet_az2" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.0.0.64/26"
  availability_zone = "ap-southeast-1b"

  tags = local.tags
}

resource "aws_subnet" "eks_subnet_az3" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.0.0.128/26"
  availability_zone = "ap-southeast-1c"

  tags = local.tags
}
