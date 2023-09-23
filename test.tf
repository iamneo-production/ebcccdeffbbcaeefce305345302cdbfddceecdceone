terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
        }
    }
}
provider "aws"{
    region="us-east-2"
    access_key="AKIA2ZG4WOHJJXR3R635"
    secret_key="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"
}
resource "aws_instance" "ec2"{
    ami="ami-00e325d65ec41e557"
    instance_type="t2.micro"
}
output "public_ip"{
    value=aws_instance.ec2.public_ip
}