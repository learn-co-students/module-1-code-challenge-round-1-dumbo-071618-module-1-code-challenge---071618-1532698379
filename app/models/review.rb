class Review

  attr_reader :author, :restaurant, :rating, :content
  attr_accessor :rating, :content


  @@all = []

  def initialize(author, restaurant, rating, content)
    @author = author
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self

  end

  def self.all
    @@all
  end

end
