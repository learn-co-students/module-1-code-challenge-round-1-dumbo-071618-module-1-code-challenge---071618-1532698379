class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def customers
    my_restaurant = Review.all.select do |review|
      review.restaurant == self
    end
    my_restaurant.map do |restaurant|
      restaurant.customer
    end
  end

  def average_star_rating
    arr_of_rating = customers.map do |ele|
      ele.rating
    end
     avg_rating = arr_of_rating.inject{ |sum, el| sum + el }.to_f / arr.size

    avg_rating
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def longest_review
    review.max_by do |ele|
      ele.length
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
