provider "aws" {
        access_key = "*************"
        secret_key = "**************"
        region = "ap-south-1"
}

resource "aws_instance" "example" {
        ami = "ami-efa5fe80"
        instance_type = "t2.micro"
        key_name = "jai_test"
		subnet_id = "subnet-18008455"
        security_groups = ["sg-74f26f1f"]
		associate_public_ip_address = "true"
        tags {
         Name = "terraform-instance"
		 
        }
		user_data = "${file("F:/jai/jenkins.sh")}"
}