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
      restaurant.name == name
    end
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    ratings_array =
    self.reviews.collect do |review|
      review.rating
    end
    sum = 0
    i=0
    while i < ratings_array.length
      sum += ratings_array[i]
      count +=1
    end
    avg = sum/(ratings_array.length)
  end

  def longest_review
    content_array =
      self.reviews.collect |review|
        review.content
      end
    sorted = content_array.sort
    sorted[-1]
  end

end
