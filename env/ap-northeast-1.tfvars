ami_id                 = "ami-0ac6b9b2908f3e20d"
instance_type          = "t2.micro"
subnet_id              = "subnet-05fdd76de1a52c0b4"
vpc_security_group_ids = ["sg-0d2cd169362fbf719"]
tags = {
  "name" = "my-ec2",
  "owner" = "emma",
  "os" = "ubuntu22.04"
}