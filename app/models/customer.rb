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

#Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |name_array|
      name_array.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |name_object|
      name_object.first_name == name
    end
  end

  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.length
  end

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.map do |my_review|
      my_review.restaurant
    end.uniq
  end
end
