provider "aws" {
  region = "ap-southeast-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_security_group" "nginx_sg" {
  name = "terraform-nginx-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "nginx_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx

              cat > /var/www/html/index.html <<HTML
              <!DOCTYPE html>
              <html>
              <head>
                <title>Terraform Nginx Project</title>
                <style>
                  body {
                    font-family: Arial, sans-serif;
                    background: #0f172a;
                    color: white;
                    text-align: center;
                    padding-top: 100px;
                  }
                  .card {
                    background: #1e293b;
                    padding: 30px;
                    border-radius: 15px;
                    width: 60%;
                    margin: auto;
                  }
                  h1 {
                    color: #38bdf8;
                  }
                </style>
              </head>
              <body>
                <div class="card">
                  <h1>Terraform + Nginx Deployment</h1>
                  <p>This website was automatically deployed using Terraform user data.</p>
                  <p>Created by Marcus as part of a Cloud Engineer learning project.</p>
                </div>
              </body>
              </html>
HTML
              EOF

  tags = {
    Name = "Terraform-Nginx-Server"
  }
}

output "public_ip" {
  value = aws_instance.nginx_server.public_ip
}