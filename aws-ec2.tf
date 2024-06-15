resource "aws_instance" "Jenkins_master" {
  ami           = "ami-031d574cddc5bb371" # us-west-1
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.my_subnet.id
  vpc_security_group_ids = [ "sg-0fe6896f8920445ae" ]
  associate_public_ip_address = true
  user_data = file("Jenkins-master.sh")
  tags = {
    Name = "Jenkins-master"
    createdBy = "praveen"
  }
}


resource "aws_instance" "Jenkins_agent" {
  ami           = "ami-031d574cddc5bb371" # us-west-1
  subnet_id = data.aws_subnet.my_subnet.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0fe6896f8920445ae" ]
  associate_public_ip_address = true
  user_data = file("Jenkins-agent.sh")
  tags = {
    Name = "Jenkins-agent"
    createdBy = "praveen"
  }
}