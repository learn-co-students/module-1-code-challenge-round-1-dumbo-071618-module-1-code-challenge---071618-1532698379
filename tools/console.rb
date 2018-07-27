require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


tyrell = Customer.new("Tyrell", "Gordon")
tyrion = Customer.new("Tyrion", "Lannister")
five_guys = Restaurant.new("Five Guys")
chipotle = Restaurant.new("Chipotle")
review = Review.new(tyrion, chipotle, 2, "gentrified burrito bowls")
review2 = Review.new(tyrell, five_guys, 6, "dank")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
