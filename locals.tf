locals {
  aws_cli_command          = var.install_aws_cli ? local.aws_module_cli_command : local.aws_standard_cli_command
  aws_module_cli_command   = "${path.module}/awscli/bin/aws"
  aws_standard_cli_command = "aws"
}