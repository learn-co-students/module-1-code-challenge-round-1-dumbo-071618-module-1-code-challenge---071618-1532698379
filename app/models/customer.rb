class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|c| c.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|c| c.first_name == name}
  end

  def self.all_names
    @@all.map {|c| c.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant: restaurant, content: content, rating: rating, customer: self )
  end

  def num_reviews
    Review.all.count {|r| r.customer == self}
  end

  def my_reviews
    Review.all.select {|r| r.customer == self}
  end

  def restaurants
    self.my_reviews.map {|r| r.restaurant}
  end
end
