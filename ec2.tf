module "httpprojectmodule" {
  source     = "github.com/sidhusaiprasanth/network"
  department = "production"
  cidr_vpc   = "172.17.0.0/16"
  azs_pub    = ["172.17.11.0/24", "172.17.12.0/24", "172.17.13.0/24"]
  azs_pri    = ["172.17.14.0/24", "172.17.15.0/24", "172.17.16.0/24"]
}


output "ami_id" {
  value = module.httpprojectmodule.ami_id
}

output "instances_arns" {
  value = module.httpprojectmodule.instances_arns

}

output "instance_details" {
  value = module.httpprojectmodule.instance_details
}

output "subnet_pub_list" {
  value = module.httpprojectmodule.subnet_pub_list
}

output "subnet_pri_list" {
  value = module.httpprojectmodule.subnet_pri_list
}


output "subnet_pub_id_arn" {
  value = module.httpprojectmodule.subnet_pub_id_arn
}

output "subnet_pri_id_arn" {
  value = module.httpprojectmodule.subnet_pri_id_arn
}
