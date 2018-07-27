class Restaurant
  attr_accessor :name

  @@all = []
  ## Instance Methods ##
  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    sum = 0.0
    count = 0.0
    self.reviews.each do |review|
      sum += review.rating
      count += 1.0
    end
    (sum / count).to_f
  end

  def longest_review
    longest = ""
    self.reviews.each do |review|
      longest = review.content if review.content.length > longest.length
    end
    longest
  end

  ## Class Methods
  def self.all
    @@all
  end

  def self.find_by_name name
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end
end
