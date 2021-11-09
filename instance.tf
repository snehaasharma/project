resource "aws_instance" "instance" {
  ami           = "ami-0706d2dc41a5eb0b4" # us-west-2
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.SG.id]
  key_name = "cloud_itm"
  associate_public_ip_address = "true"
  provisioner "local-exec" {

    command = "echo ${aws_instance.instance.public_ip} >> student"
  }

}

resource "aws_instance" "instance2" {
  ami           = "ami-0706d2dc41a5eb0b4" # us-west-2
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.SG.id]
  key_name = "cloud_itm"
  associate_public_ip_address = "true"
  provisioner "local-exec" {

    command = "echo ${aws_instance.instance2.public_ip} >> student"
  }


}




