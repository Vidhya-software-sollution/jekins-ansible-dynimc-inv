provider "aws"{
   region  = "ap-south-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 2
     ami     =  "ami-01216e7612243e0ef"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-5"]
     key_name        = "devopptraining"
     tags = {
        Name = "tomcatservers"
     }
}

