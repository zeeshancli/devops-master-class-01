varriables "users"{
    defaults = {
        zeeshan: {country: "Netherlands" , freinds: "US"}
        kareem: {country: "canada" , friends: "noone"}
        talib:  {country: "india" , friends: "veryless"}
    }
}
provider "aws" {
  region  = "us-east-1"
  //version = "~> 2.46" (No longer necessary)
}

resource "aws_iam_user" "my_iam_second_users" {
    for_each = var.users
    name = each.key
    tags = {
        country: each.value.country
        friends: each.value.friends
    }
}