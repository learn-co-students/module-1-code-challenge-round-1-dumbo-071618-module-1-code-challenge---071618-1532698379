require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tito = Customer.new("Tito", "Rivera")
kevin = Customer.new("Kevin", "Rivera")
taco = Restaurant.new("tacos")
pablos = Restaurant.new("Pablos")

review1 = Review.new("Tito", "tacos", 2, "Bad")
review2 = Review.new("Kevin", "Pablos", 5, "Good")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
