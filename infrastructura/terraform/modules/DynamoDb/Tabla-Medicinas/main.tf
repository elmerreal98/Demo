resource "aws_dynamodb_table" "terraform-dynamotable-medicinas" {
  name           = "medicinas"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "Nombre"

  attribute {
    name = "Nombre"
    type = "S"
  }

  tags = {
    Name        = "terraform-dynamotable-medicinas"
    Environment = "production"
  }
}

output "name_dynamo_table" {
  value = aws_dynamodb_table.terraform-dynamotable-medicinas.id
}
