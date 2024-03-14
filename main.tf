# Define an AWS EC2 instance resource named "app_server"
resource "aws_instance" "app_server" {
  # Use the latest Amazon Linux AMI as the image for the instance
  ami           = data.aws_ami.amazon_linux.id
  # Use a t2.micro instance type
  instance_type = "t2.micro"

  # Add tags to the instance for easier identification
  tags = {
    Name = "test"
  }
}

# Retrieve information about the latest Amazon Linux AMI
data "aws_ami" "amazon_linux" {
  # Specify that the owner of the AMI should be "amazon"
  owners      = ["amazon"]
  # Specify that we want the most recent AMI
  most_recent = true

  # Define filters to narrow down the search for the AMI
  filter {
    # Filter by the name of the AMI
    name   = "name"
    # Specify the pattern for the name of the AMI
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}
