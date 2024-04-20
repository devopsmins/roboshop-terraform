env= "dev"
tags = {
  company = "xyz.co"
  bu_unit = "ECommerce"
  project_name = "roboshop"
}

account_id             = "827956817277"
default_vpc_id         = "vpc-05d61a29df92cedf0"
default_route_table_id = "rtb-00fca9562f27c8a7c"
default_vpc_cidr       = "172.31.0.0/16"


vpc =  {
  main = {
    cidr_block = "10.10.0.0/16"


    public_subnets = ["10.10.0.0/24", "10.10.1.0/24"]
    web_subnets    = ["10.10.2.0/24", "10.10.3.0/24"]
    app_subnets    = ["10.10.4.0/24", "10.10.5.0/24"]
    db_subnets     = ["10.10.6.0/24", "10.10.7.0/24"]
    azs            = ["us-east-1a", "us-east-1b"]



  }

}