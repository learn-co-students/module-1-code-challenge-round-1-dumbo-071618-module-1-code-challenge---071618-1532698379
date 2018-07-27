class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating, :content
    @@all = []

    def initialize(customer, restaurant, rating, content)
        @rating = rating
        @content = content
        @restaurant = restaurant
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end
end

