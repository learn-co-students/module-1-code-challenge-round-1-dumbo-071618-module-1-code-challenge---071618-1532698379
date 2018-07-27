class Review
  attr_reader :restaurant,:customer,:rating
  attr_accessor :content

  @@all = []

  def initialize restaurant,customer,rating,content
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content

    @@all << self
  end

  def rating=(int)
    if int < 1
      self.rating = 1
    elsif int > 5
      self.rating = 5
    end
  end

  def self.all
    @@all
  end
end
