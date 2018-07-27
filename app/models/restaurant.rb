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

  #come back to this one
  # def self.find_by_name(name)
  # end

  def customer
    restaurant_review= Review.all.select do |review_resturant|
      review_resturant.restaurant == self
    end
    all_customers = restaurant_review.map do |restaurant|
      "#{restaurant.customer.first_name} #{restaurant.customer.last_name}"
    end
    all_customers.uniq
  end

  def reviews
    restaurant_review = Review.all.select do |review_resturant|
      review_resturant.restaurant == self
    end
    restaurant_review.map do |restaurant|
      restaurant.content
    end
  end

  #didn't finsh figuring out averages
  def average_start_rating
    restaurant_review = Review.all.select do |review_resturant|
      review_resturant.restaurant == self
    end
  restaurant_rating  = restaurant_review.map do |restaurant|
      restaurant.rating
    end
  end

end
