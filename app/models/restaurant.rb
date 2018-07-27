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

  def self.restaurant_find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end


  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  # def average_star_rating
  #   review.map do |review|
  #     review.rating
  # end

end
