# Unit test for the EC2 module
run "validate_instance_creation" {
  command = plan

  variables {
    instance_count     = 1
    ami_id             = "ami-12345678"
    instance_type      = "t3.micro"
    key_name           = "test-key"
    subnet_id          = "subnet-12345678"
    security_group_ids = ["sg-12345678"]
    ebs_size           = 10
    instance_name      = "test-instance"
  }

  assert {
    condition     = length(aws_instance.this) == 1
    error_message = "Expected 1 EC2 instance to be planned"
  }

  assert {
    condition     = aws_instance.this[0].tags["Name"] == "test-instance-0"
    error_message = "Instance name tag does not match expected pattern"
  }
}
