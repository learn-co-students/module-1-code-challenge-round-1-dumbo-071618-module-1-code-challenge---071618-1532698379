require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

masud = Customer.new("Masud", "Ahmed")
roberto = Customer.new("Roberto", "Hernandez")
jason = Customer.new("Jason", "Bourne")
masud2 = Customer.new("Masud", "Barns")
masud_clone = Customer.new("Masud", "Ahmed")

gourmet = Restaurant.new("Gourmet")
red_lobster = Restaurant.new("Red Lobster")

review1 = Review.new(masud, gourmet, 2, "bad")
review2 = Review.new(roberto, red_lobster, 5, "amazing")
review3 = Review.new(roberto, gourmet, 3, "great but not that great")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
