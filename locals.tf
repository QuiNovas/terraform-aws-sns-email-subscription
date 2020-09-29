locals {
  aws_cli_command          = var.install_aws_cli ? local.aws_standard_cli_command : local.aws_module_cli_command
  aws_module_cli_command   = "aws"
  aws_standard_cli_command = "~/bin/aws"
}