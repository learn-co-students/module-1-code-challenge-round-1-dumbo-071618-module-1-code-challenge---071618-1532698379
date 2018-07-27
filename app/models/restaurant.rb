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
    Restaurant.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

  def customers
    all_reviews = Review.all.select {|review| review.restaurant == self}
    all_reviews.map do |review|
      review.customer.full_name
    end
  end

  def all_reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    avg = 0.0
    self.all_reviews.each do |review|
      avg += review.rating
    end

    avg = avg / all_reviews.size
  end

  def longest_review
    longest = [nil, 0]
    self.all_reviews.each do |review|
      if review.content.length > longest[1]
        longest[0] = review
        longest[1] = review.content.length
      end
    end
    longest[0]
  end
  

end
