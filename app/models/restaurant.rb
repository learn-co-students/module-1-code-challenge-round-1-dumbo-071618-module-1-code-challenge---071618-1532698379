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

  def self.find_by_name(restaurant_name)
    restaurant_name.downcase!
    self.all.find do |restaurant|
      restaurant.name.downcase == restaurant_name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq!
  end

  def average_star_rating
    sum = 0
    restaurant_reviews = reviews
    restaurant_reviews.each do |review|
      sum += review.rating
    end
    return sum / restaurant_reviews.length
  end

  def longest_review
    longest = 0
    content = ""
    reviews.each do |review|
      if content.length < review.content.length

  end





end
