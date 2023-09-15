output "vpc_id"{
    value = aws_vpc.main.id
}

# output "azs" {
#     value = data.aws_availability_zones.azs.names
# }

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    value = aws_subnet.public[*].id
}
 
 output "database_subnet_ids" {
    value = aws_subnet.public[*].id
}
