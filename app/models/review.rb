class Review
  attr_accessor :restaurant, :customer, :rating, :content
  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
