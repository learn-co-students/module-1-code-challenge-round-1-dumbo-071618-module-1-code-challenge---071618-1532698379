class Review
  attr_accessor :rating, :content
  attr_reader :customer, # Once a review is created, I should not be able to
  # change the author
            :restaurant  # Once a review is created, I should not be able to
  # change the restaurant
  @@all = []

  def initialize customer, restaurant, rating, content
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end
  # Review.all
  def self.all
    # returns all of the reviews
    @@all
  end
  # Review#customer
  def reviewed_by # Changed named to resolve conflict
    # returns the customer object for that given review
    self.customer
  end
  # Review#restaurant
  def reviewed # Changed named to resolve conflict
    # returns the restaurant object for that given review
    self.restaurant
  end
  # Review#rating
  def rating_received # Changed named to resolve conflict
    # returns the star rating for a restaurant. This should be an integer from
    # 1-5
    self.rating
  end
  # Review#content
  def comments # Changed named to resolve conflict
    # returns the review content, as a string, for a particular review
    self.content
  end
end
