#### Build out the following methods on the `Restaurant` class

#- `Restaurant.all`
  #- returns an array of all restaurants
#- `Restaurant.find_by_name(name)`
 # - given a string of restaurant name, returns the first restaurant that matches


class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
     @name = name
     @@all << self
  end


  def self.all
   @@all
  end 


 def self.find_by_name(name)
   Restaurant.all.find {|ele| ele.name == name}
 end 


end
