class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    name_split = name.split
    Customer.all.find do |all_names|
      all_names.first_name == name_split[0] && all_names.last_name == name_split[1]
    end
  end

  #come back to this one
  def self.find_all_by_first_name(name)
    name_split = name.split
    Customer.select do |all_names|
      all_names.first_name == (name_split)
    end
  end

  def self.all_names
    Customer.all.map do |all_names|
      "#{all_names.first_name} #{all_names.last_name}"
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    my_reviews = Review.all.select do |all_reviews|
      all_reviews.customer == self
    end
    my_reviews.length
  end

  def restaurants
    my_reviews = Review.all.select do |all_reviews|
      all_reviews.customer == self
    end
    restaurants = my_reviews.map do |my_review|
      my_review.restaurant.name
    end
    restaurants.uniq
  end
end
