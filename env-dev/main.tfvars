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
route53_zone_id = "Z05815251WQO0OK50UPQR"
kms             = "arn:aws:kms:us-east-1:827956817277:key/42af000f-94d6-4913-a952-14877c37a92e"
certificate_arn = "arn:aws:acm:us-east-1:827956817277:certificate/3841c970-14da-4ec8-84d4-4f62d433c424"
bastion_cidrs    = ["172.31.46.160/32"]
prometheus_cidrs = ["172.31.46.200/32"]



vpc =  {
  main = {
    vpc_cidr_block = "10.11.0.0/16"


    public_subnets = ["10.11.0.0/24", "10.11.1.0/24"]
    web_subnets    = ["10.11.2.0/24", "10.11.3.0/24"]
    app_subnets    = ["10.11.4.0/24", "10.11.5.0/24"]
    db_subnets     = ["10.11.6.0/24", "10.11.7.0/24"]
    azs            = ["us-east-1a", "us-east-1b"]

  }

}

rds = {
  main = {
    allocated_storage      = 20
    engine                 = "mysql"
    engine_version         = "5.7.44"
    instance_class         = "db.t3.micro"
    parameter_group_family = "mysql5.7"
  }
}

docdb = {
  main = {
    engine                 = "docdb"
    engine_version         = "4.0.0"
    instance_class         = "db.t3.medium"
    parameter_group_family = "docdb4.0"
    instance_count         = 1
  }
}

elasticache = {
  main = {
    engine                 = "redis"
    engine_version         = "6.2"
    node_type              = "cache.t3.micro"
    parameter_group_family = "redis6.x"
    num_cache_nodes        = 1
  }
}

rabbitmq = {
  main = {
    instance_type = "t3.small"
  }
}