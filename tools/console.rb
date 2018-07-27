require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

me = Customer.new("Fr", "Ls")
rest = Restaurant.new("Mr.wonderful")

fav_review = Review.new(me, rest, 2, "content")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
