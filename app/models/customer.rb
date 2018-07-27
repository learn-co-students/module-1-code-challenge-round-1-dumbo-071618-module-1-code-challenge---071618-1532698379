class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  # Customer.all
  def self.all
    # should return all of the customer instances
    @@all
  end
  # Customer.find_by_name(name)
  def self.find_by_name name
    # given a string of a full name, returns the first customer whose full name
    # matches
    all.find { | customer |
      reservation = name.split
      customer.first_name == reservation[0] && customer.last_name == reservation[1]
    }
  end
  # Customer.find_all_by_first_name(name)
  def self.find_all_by_first_name name
    # given a string of a first name, returns an array containing all customers
    # with that first name
    all.select { |customer| customer.first_name == name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  # Customer.all_names
  def self.all_names
    # should return an array of all of the customer full names
    all.map { |customer| customer.full_name }
  end
  # Customer#add_review(restaurant, content, rating)
    # given a restaurant object, some review content (as a string), and a star
    # rating (as an integer), creates a new review and associates it with that
    # customer and restaurant.
  # Customer#num_reviews
    # Returns the total number of reviews that a customer has authored
  # Customer#restaurants
    # Returns a unique array of all restaurants a customer has reviewed
end
