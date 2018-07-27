class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  ## Instance Methods ##
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review restaurant,content,rating
    Review.new restaurant,self,rating,content
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.map do |review|
      review.restaurant
    end.uniq 
  end

  ## Class Methods ##

  def self.all
    @@all
  end

  def self.find_by_name name
    self.all.find do |customer|
      name == customer.full_name
    end
  end

  def self.find_all_by_first_name name
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end
end
