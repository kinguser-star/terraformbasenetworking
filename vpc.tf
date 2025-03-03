resource "aws_vpc" "main-vpc" {
cidr_block = "10.0.0.0/16"
enable_dns_hostnames = "true"
tags = {
Name = "pankaj123-vpc"
}
}

resource "aws_subnet""subnet-1"{
vpc_id=aws_vpc.main-vpc.id
cidr_block="10.0.0.0/24"
map_public_ip_on_launch="true"
tags={
Name="pankaj-subnet-1"
}
}

resource "aws_internet_gateway""igw"{
vpc_id=aws_vpc.main-vpc.id
tags={
Name="pankaj-igw"
}
}

resource "aws_route_table" "my-route-table-1" {
vpc_id = aws_vpc.main-vpc.id
#Route anything with a CIDR of 0.0.0.0/0 to the IGW
route {
cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.igw.id
}
tags = {
Name = "pankaj-routetable"
}
}

resource "aws_route_table_association" "my-route-association" {
subnet_id = aws_subnet.subnet-1.id
route_table_id = aws_route_table.my-route-table-1.id
}

