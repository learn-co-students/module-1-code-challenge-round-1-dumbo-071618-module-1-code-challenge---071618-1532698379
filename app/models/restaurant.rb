class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  # Restaurant.all
  def self.all
    # returns an array of all restaurants
    @@all
  end
  # Restaurant.find_by_name(name)
  def self.find_by_name name
    # given a string of restaurant name, returns the first restaurant that
    # matches
    all.find { | restaurant | restaurant.name == name }
  end
  # Restaurant#customers
  def customers
    # Returns a unique list of all customers who have reviewed a particular
    # restaurant.
  end
  # Restaurant#reviews
  def reviews
    # returns an array of all reviews for that restaurant
  end
  # Restaurant#average_star_rating
  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
  end
  # Restaurant#longest_review
  def longest_review
    # returns the longest review content for a given restaurant
  end
end
