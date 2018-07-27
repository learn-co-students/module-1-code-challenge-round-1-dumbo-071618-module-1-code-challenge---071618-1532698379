class Review
  attr_accessor :rating, :customer, :restaurant
  attr_reader :review

  @@all = []

  def initialize(review, customer, restaurant, rating)
    @review = review

    @@all << self
  end

  def self.all
    @@all
  end
end
