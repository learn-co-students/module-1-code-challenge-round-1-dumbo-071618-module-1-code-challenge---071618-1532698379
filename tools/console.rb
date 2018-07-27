require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
derick = Customer.new("Derick", "Castillo")
hairy = Customer.new("Harry", "Foot")
eye = Customer.new("Pink", "Eye")
ugly = Customer.new("Ugly", "Duckling")
face = Customer.new("Fart", "Face")
foot = Customer.new("Fart", "Foot")
rock = Customer.new("Fart", "Rock")

burger = Restaurant.new("Burger Spot")
pizza = Restaurant.new("Pizza Spot")
liver = Restaurant.new("Liver Spot")
vegan = Restaurant.new("Vegan Spot")
fries = Restaurant.new("Fries Spot")

rev1 = Review.new(derick, burger, 5, "Good burgers yo!")
rev2 =Review.new(hairy, pizza, 4, "Great pizza kid!")
rev3 =Review.new(eye, liver, 1, "Liver sucks bro!")
rev4 =Review.new(derick, vegan, 2, "Not good food dun!")
rev5 =Review.new(ugly, fries, 5, "Awesome fries son!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
