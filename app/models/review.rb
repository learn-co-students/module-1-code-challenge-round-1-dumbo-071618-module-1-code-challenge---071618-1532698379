class Review

  @@all = []

  attr_reader :customer, :restaurant, :rating
  attr_accessor :content


  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    self.rating
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

  #need to make sure rating is a int and 1-5
  def rating=(rate)
    if rate < 0 && rate > 5
      puts "rating should be an integer 1 to 5"
      abort
    else
      @rate = rate
  end

end
