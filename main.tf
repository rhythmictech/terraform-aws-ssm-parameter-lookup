data "aws_ssm_parameters_by_path" "this" {
  path = local.basepath
}

locals {
  basepath = regex("^(.*/)([^/]*)$", var.ssm_parameter)[0]
  found    = (length(data.aws_ssm_parameters_by_path.this.names) > 0 && contains(data.aws_ssm_parameters_by_path.this.names, var.ssm_parameter))
}
