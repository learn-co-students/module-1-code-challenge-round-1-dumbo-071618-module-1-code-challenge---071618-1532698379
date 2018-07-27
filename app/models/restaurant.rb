class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|r| r.name == name}
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    self.reviews.map {|r| r.customer}
  end

  def average_star_rating
    sum = 0
    my_ratings = self.reviews.map {|r| r.rating}
      my_ratings.each do |number|
          sum += number
      end
    sum / my_ratings.length
  end

  def longest_review
    counter_array = [nil,0]
    my_review_content = self.reviews.map {|r| r.review}
    my_review_content.each do |review|
      if review.split.size > counter_array[1]
         review.split.size = counter_array[1]
         review = counter_array[0]
      end
    end
    counter_array[0]
  end
end
