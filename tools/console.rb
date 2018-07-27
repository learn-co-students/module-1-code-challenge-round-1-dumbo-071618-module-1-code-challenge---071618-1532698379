require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Gabriel", "Batista")
cust2 = Customer.new("Prince", "McPrince")
cust3 = Customer.new("Tony", "Baloney")
cust4 = Customer.new("Prince", "Maxcell")
cust5 = Customer.new("Gabriel", "Batista")

rest1 = Restaurant.new("McDonalds")
rest2 = Restaurant.new("Wendies")
rest3 = Restaurant.new("Good Burger")
rest4 = Restaurant.new("Bad Burger")

rev1 = Review.new(cust1, rest1, 5, "yeah this a string")
rev1 = Review.new(cust2, rest1, 4, "yeah this a stringasdasdads")
rev1 = Review.new(cust1, rest4, 2, "yeah this a string")
rev1 = Review.new(cust5, rest2, 3, "yeah this a string")



######CUSTOMER##################################################
#find_by_name---------
puts "Searching for gabriel batista: "
puts Customer.find_by_name("Gabriel Batista").full_name
#---------------------


#find_by_first_name---
puts "Searching for Prince McPrince:"
result = Customer.find_all_by_first_name("Prince")
result.each do |person|
  puts person.full_name
end
#---------------------

#all_names------------
puts "Expect all full names:"
puts Customer.all_names
#---------------------
##################################################################

#######RESTAURANT#################################################

#find_by_name---------
puts "Expect Good burger:"
puts Restaurant.find_by_name("Good burger").name
#---------------------

####################################################################

puts "expect 2"
puts cust1.num_reviews

puts "restaurants\n\n"
cust1.restaurants


binding.pry
0123 #leave this here to ensure binding.pry isn't the last line
