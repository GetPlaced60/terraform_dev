instance_count     = 1
ami_id             = "ami-07a00cf47dbbc844c" # ubuntu (Mumbai region)
key_name           = "dev"
security_group_ids = ["sg-059ec8473848e75aa"]

subnets = {
  public  = "subnet-04ae455a364552d6e"
  private = "subnet-xxxxxxxxxxxxxxxxx" # Replace with real private subnet ID
}
