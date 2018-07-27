class Customer
  attr_accessor :first_name, :last_name
  @@all = [] #this class variable represents all customers

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self #shoveling in all customers
  end

  def self.all #this class method is the array which holds all customers.
    @@all
  end

  def full_name #this is an insance method
    "#{first_name} #{last_name}"
    #this returns a string which represents a full name
  end

  def self.all_names
    #i want to get an array of all full names, which means i need to join the last name, and the first name
  end

  def self.find_by_name
    #here i want to iterate over an array of full names and find the one which matches that instance of customer
    full_name.find do |name|

    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews #what it says on the tin, an array of all the reviews belonging to a specific customer instance.
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    my_reviews.length
  end

  def restaurants# it says unique so i assume they don't want to see the same restaurant twice in this array, need to fix that.
    my_restaurants = Review.all.map do |review|
      review.restaurant
    end
    my_restaurants.uniq
    #and fixed 
  end

end
