output "insecure_value" {
  value = var.return_insecure ? (local.found ? nonsensitive(data.aws_ssm_parameters_by_path.this.values[index(data.aws_ssm_parameters_by_path.this.names, var.ssm_parameter)]) : "") : null
}

output "value" {
  value = local.found ? data.aws_ssm_parameters_by_path.this.values[index(data.aws_ssm_parameters_by_path.this.names, var.ssm_parameter)] : ""
}
