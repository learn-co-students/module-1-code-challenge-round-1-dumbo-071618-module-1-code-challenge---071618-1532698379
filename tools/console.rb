require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

  scarlett = Customer.new("Scarlett", "Perry")
  sabrina = Customer.new("Sabrina", "Perry")
  scarlett2 = Customer.new("Scarlett", "Johansen")

  upthai = Restaurant.new("Up Thai")
  vanessa = Restaurant.new("Vanessa")

  scarlett.add_review(upthai, 5, "yum")
  scarlett.add_review(upthai, 5, "yummy")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
