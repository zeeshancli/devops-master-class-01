variable "usersfor"{
    default = {
        zeeshan: {country : "Netherlands" , freinds : "US"}
        kareem: {country : "canada" , friends : "noone"}
        talib:  {country : "india" , friends : "veryless"}
    }
}


resource "aws_iam_user" "my_iam_second_users" {
    for_each = var.usersfor
    name = each.key
    tags = {
        country : each.value.country
        friends : each.value.friends
    }
}