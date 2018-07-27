require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kid = Customer.new("Jay", "ZZZZ")
res = Restaurant.new("Grrek fest")
view = Review.new(kid,res,4,"This is the content")

binding.pry
 #leave this here to ensure binding.pry isn't the last line 
#cust = Customer.new("Billy", "Bob")
www

#Customer.find_by_name("Billy Bob")