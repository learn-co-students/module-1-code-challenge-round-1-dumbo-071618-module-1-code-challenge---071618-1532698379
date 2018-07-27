require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

taciturn = Customer.new("Medhani", "Mora")
gregarious = Customer.new("Madhirakshi", "Mora")
cowens_public = Restaurant.new("Cowen's Public")
the_vangaurd = Restaurant.new("The Vangaurd")
taciturn.add_review(cowens_public, "Amazing!", 5)
taciturn.add_review(the_vangaurd, "Unknowable", 1)
gregarious.add_review(cowens_public, "chill", 4)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
