terraform {
  backend "s3" {
    bucket ="infrastructure--remote--state"
    key = "bookconcepts/global/route.tfstate"
    region = "us-east-2"
  }
}

resource "aws_route53_zone" "primary" {
  name = "${var.domain}"
  comment = "primary hosted zone for booksconcepts."
}