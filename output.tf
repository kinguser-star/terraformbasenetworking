output "my_vpc"{
value=aws_vpc.main-vpc.id
}

output "my_subnet"{
value=aws_subnet.subnet-1.id
}

output "my_igw"{
value=aws_internet_gateway.igw.id
}

output "my_routtable1"{
value=aws_route_table.my-route-table-1.id
}

output "my_rtassociation"{
value=aws_route_table_association.my-route-association.id
}

output "aws_key_pair" {
  value = aws_key_pair.vm_ssh_key.key_name
}

output "my_sg" {
  value = aws_security_group.allow_tls.id
}
