resource "aws_network_interface" "APP" {
  subnet_id   = aws_subnet.public.id
  private_ips = ["192.168.1.100"]

}

resource "aws_instance" "APP" {
  ami= var.ami
  instance_type= var.instance_type


  network_interface {
    network_interface_id = aws_network_interface.APP.id
    device_index         = 0
  }


}

resource "aws_network_interface" "DB" {
  subnet_id   = aws_subnet.private.id
  private_ips = ["192.168.2.100"]

}

resource "aws_instance" "DB" {
  ami= var.ami
  instance_type= var.instance_type


  network_interface {
    network_interface_id = aws_network_interface.DB.id
    device_index         = 0
  }
}
                