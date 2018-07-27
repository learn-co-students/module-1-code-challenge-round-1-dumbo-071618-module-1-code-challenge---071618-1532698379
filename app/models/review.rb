class Review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant
  @@all = []


  def initialize(customer, restaurant, rating, content)
    @customer = customer#customer unchangeable
    @restaurant = restaurant#restaurant unchangeable
    @rating = rating #integer from 1-5
    @content = content#string

    @@all << self
  end

  def self.all
    @@all
  end




end
