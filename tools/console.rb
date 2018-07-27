require_relative '../config/environment.rb'
require_relative '../app'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kyle = Customer.new("Kyle", "Neale")
kevin = Customer.new("Kevin", "Meh")
kos = Customer.new("Nkosi", "Bruh")
gab = Customer.new("Gab", "Slaz")
dab = Customer.new("Dab", "Bad")
tony = Customer.new("Tony", "Romo")

mc_d = Restaurant.new("McDonalds")
burger_k = Restaurant.new("Burger King")
five_guys = Restaurant.new("Five Guys")
chipotle = Restaurant.new("Chipotle")
albertos = Restaurant.new("Albertos")

kyle.add_review(five_guys, "the longest review ever", 4)
kyle.add_review(mc_d, "It's okay", 2.3)
dab.add_review(chipotle, "Seen better days", 4.5)
kevin.add_review(five_guys, "How about no", 3.5)

kevin.add_review(burger_k, "not bad", 3.5)
kos.add_review(chipotle, "poop", 3.5)
tony.add_review(mc_d, "butt", 3.5)
gab.add_review(five_guys, "It's okay", 3.5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
