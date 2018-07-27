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
    self.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
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
    end.uniq
  end

  def average_star_rating
    arr = reviews.map do |review|
      review.rating
    end
    (arr.reduce(:+) / arr.length.to_f).round(1)
  end

  def longest_review
    reviews.map do |review|
      review.content
    end.max_by do |content|
      content.length
    end
  end

end
