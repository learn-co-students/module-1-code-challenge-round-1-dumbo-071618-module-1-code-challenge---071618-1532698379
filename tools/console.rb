require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tim = Customer.new("tim", "bob")
jim = Customer.new("jim", "bob")
lim = Customer.new("lim", "bob")
dim = Customer.new("tim", "YOOOOOOb")
tim = Customer.new("tim", "dsads")
tim = Customer.new("tim", "shaob")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
