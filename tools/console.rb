require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
amirata = Customer.new("Amirata", "Khodaparast")
kevin = Customer.new("Kevin", "Rivera")
bryan = Customer.new("Bryan", "Teng")
prince = Customer.new("Prince", "Wilson")
rosa = Customer.new("rosa", "Tu")
amirata2 = Customer.new("Amirata", "Blah")

ravagh = Restaurant.new("Ravagh")
persian = Restaurant.new("Persian")
greek = Restaurant.new("Greek")
spanish = Restaurant.new("Spanish")
thai = Restaurant.new("Thai")

amirata.add_review(ravagh, "delicious", 3)
amirata.add_review(persian, "delicious", 5)
rosa.add_review(ravagh, "excellent", 5)
amirata.add_review(ravagh, "deliciousdsadasdss", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line