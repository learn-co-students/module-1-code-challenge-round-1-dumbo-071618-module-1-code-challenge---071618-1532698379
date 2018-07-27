require "pry"

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def add_review(restaurant, review, rating)
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews
    Review.all.select do |review|
      review.author == self
    end
  end

  def self.restaurants
    my_reviews.map do |review|
      review.restaurant
    end
  end

end
