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

  def self.find_by_name(string)
    @@all.find do |name|
      name.full_name.downcase == string.downcase
    end
  end

  def self.all_names
    @@all.map do |name|
      name.full_name
    end
  end

  def add_review(restaurant,rating,content)
    Review.new(self,restaurant,rating,content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end


  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
