class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    Customer.all.find do |customer|
      customer.full_name.downcase == full_name.downcase
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name.downcase == first_name.downcase
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant, rating, content)
  end

  def num_reviews
    all_reviews = Review.all.select { |review| review.customer == self }
    all_reviews.size
  end

  def restaurants
    all_reviews = Review.all.select { |review| review.customer == self}

    all_reviews.map do |review|
      review.restaurant.name
    end
  end
end
