resource "null_resource" "email_subscription" {
  depends_on = [var.topic_arn]

  provisioner "local-exec" {
    command = "${local.aws_cli_command} sns subscribe --topic-arn ${var.topic_arn} --protocol email --notification-endpoint ${var.email_address}"

  }

  triggers = {
    email_id  = var.email_address
    topic_arn = var.topic_arn
  }
}