require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

roberto = Customer.new("Roberto", "Buso")
gabe = Customer.new("Gabriel", "Batista")
rosa = Customer.new("Rosa", "Tu")

alta = Restaurant.new("Alta")
bobo = Restaurant.new("Bobo")
rosemarys = Restaurant.new("Rosemarys")

rosareview1 = rosa.add_review(bobo, "AWESOME PLACE", 4)
rosareview2 = rosa.add_review(alta, "CRAZY", 5)
gabereview1 = gabe.add_review(rosemarys, "TERRIBLE", 1)
rosareview3 = rosa.add_review(bobo, "WENT AGAIN", 5)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
