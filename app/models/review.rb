class Review

    attr_accessor :customer, :restaurant, :rating, :content
    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        if rating >5
            @rating = 5
        elsif rating < 1
            @rating = 1
        else
            @rating = rating.to_i
        end
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end
  
end

