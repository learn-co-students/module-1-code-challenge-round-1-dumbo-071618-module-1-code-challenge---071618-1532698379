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
    self.all.find do |restaurant_name|
      restaurant_name.name == name
    end
  end

  def customers
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    reviews.map do |my_review|
      my_review.customer
    end.uniq
  end

  def reviews
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    ratings =
    self.reviews.map do |review|
      review.rating
    end
    ratings_sum =ratings.inject do |sum, n|
      sum + n
    end
    ratings_sum / ratings.length
  end

  def longest_review
    content_review = reviews.sort_by do |review|
      review.content.length
    end
    content_review[-1].content
  end
end
