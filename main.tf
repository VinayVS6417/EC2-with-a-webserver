resource "aws_security_group" "sg" {
    name = "web-sg"
    description = "Allow HTTP and SSH traffic"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "webserver" {
    ami = "ami-0a7cf821b91bcccbc"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.sg.id ]
    key_name = "terraKeys"

    user_data = file("userdata.sh")
}

output "public_ip" {
    value = aws_instance.webserver.public_ip
}