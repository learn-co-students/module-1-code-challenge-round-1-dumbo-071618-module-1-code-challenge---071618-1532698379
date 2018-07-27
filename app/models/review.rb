class Review
  attr_accessor :review, :customer, :restaurant

  @@all = []

  def initialize(customer)
    @customer = customer

    @@all << self
  end

  def self.all
    @@all
  end

  def customer

  end

  def restaurant
  end

  def rating
  end

  def content
  end
end
