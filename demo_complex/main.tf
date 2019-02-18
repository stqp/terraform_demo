

module "ec2" {
  source = "./modules/aws/ec2"
}

module "iam" {
  source = "./modules/aws/iam"
}
