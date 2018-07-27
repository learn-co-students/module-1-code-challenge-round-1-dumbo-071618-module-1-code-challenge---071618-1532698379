require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object
# instances, so they will be available to test and play around with in your
# console
# Restaurant Tests
carmens = Restaurant.new "Carmen's"
# puts 'This should return a restaurant named "Carmen\'s":'
# pp carmens
four_seasons = Restaurant.new 'the Four Seasons'
tavern = Restaurant.new 'Tavern on the Green'
# puts 'This should return an array of restaurant instances:'
# pp Restaurant.all
# puts 'This should return "the Four Seasons":'
# pp Restaurant.find_by_name 'the Four Seasons'

# Customer Tests
jane = Customer.new 'Jane', 'Doe'
# puts 'This should return a customer named "Jane Doe":'
# pp jane
john1 = Customer.new 'John', 'Doe'
emeril = Customer.new 'Emeril', 'Anonymous'
john2 = Customer.new 'John', 'Smith'
# puts 'This should return an array of customer instances:'
# pp Customer.all
# puts 'This should return "Emeril":'
# pp Customer.find_by_name 'Emeril Anonymous'
# puts 'This should return an array of customer instances named "John":'
# pp Customer.find_all_by_first_name 'John'
# puts "This should return an array of customer instances full names:"
# pp Customer.all_names

# Review Tests
carmens_review = Review.new jane, carmens, 5, 'yum'
# puts 'This should return a 5-star review of "yum":'
# pp carmens_review
four_seasons_review = Review.new john1, four_seasons, 3, 'meh'
tavern_review = Review.new emeril, tavern, 1, 'terrible'
# puts 'This should return an array of review instances:'
# pp Review.all
# puts "This should return a Jane Doe\'s instance:"
# pp carmens_review.reviewed_by
puts "This should return a Carmen's instance:"
pp carmens_review.reviewed_by
# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line
