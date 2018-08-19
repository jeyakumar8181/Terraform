provider "aws" {
        access_key = "*************"
        secret_key = "**************"
        region = "ap-south-1"
}

resource "aws_instance" "example" {
        ami = "*****"
        instance_type = "t2.micro"
        key_name = "jai_test"
		subnet_id = "*****"
        security_groups = ["**********"]
		associate_public_ip_address = "true"
        tags {
         Name = "terraform-instance"
		 
        }
		user_data = "${file("F:/jai/jenkins.sh")}"
}
