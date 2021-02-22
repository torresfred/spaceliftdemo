
/* 
terraform {
  backend "remote" {
    organization = "Sierra-Cedar-POC"

    workspaces {
      name = "1-parent-ws-agent-run"
    }
  }
} */


resource "aws_ssm_parameter" "foo" {
  provider           = aws.uswest2
  name  = "foospace"
  type  = "String"
  value = "test4"
}

output "ssm" {                                                                     
   description = "ssm"
   value       = aws_ssm_parameter.foo.value
} 
