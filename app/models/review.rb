class Review
  @@all = []

  attr_reader :customer, :restaurant, :rating, :content

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def rating
   if @rating <= 0
     return 1
   elsif  @rating > 5
     return 5
   else
     return @rating
   end
 end


end



end
