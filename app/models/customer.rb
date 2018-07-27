class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  #Instance Methods
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(content, self, restaurant, rating)
    new_review
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

end
