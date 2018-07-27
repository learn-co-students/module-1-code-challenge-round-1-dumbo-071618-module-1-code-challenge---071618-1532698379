require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
# -- New Customers --
bryan = Customer.new("Bryan","Teng")
kyle = Customer.new("Kyle","Neale")

# -- New Restaurants --
mimis = Restaurant.new("Mimis")
gourmet = Restaurant.new("Gourmet Place")

# -- New Review --
bryan_review = Review.new(bryan,mimis,5,"good food")
kyle_review = Review.new(kyle,gourmet,4, "good enough")

# -- Testing Methods --
bryan.add_review(gourmet,5,"i like it")
bryan.add_review(mimis,5,"still good")
kyle.add_review(mimis,4, "same")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
