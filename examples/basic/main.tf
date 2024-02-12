module "ami_id" {
  source = "../.."

  return_insecure = true
  ssm_parameter   = "/org/team/system/ami/latest"

}

output "my_ami_id" {
  value = module.ami_id.insecure_value
}
