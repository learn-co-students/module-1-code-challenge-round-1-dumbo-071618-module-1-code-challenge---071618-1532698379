#### Build out the following methods on the `Review` class

#- `Review.all`
  #- returns all of the reviews
#- `Review#customer`
  #- returns the customer object for that given review
  #- Once a review is created, I should not be able to change the author
#- `Review#restaurant`
  #- returns the restaurant object for that given review
  #- Once a review is created, I should not be able to change the restaurant
#- `Review#rating`
  #- returns the star rating for a restaurant. This should be an integer from 1-5
#- `Review#content`
  #- returns the review content, as a string, for a particular review






class Review
    attr_accessor :restaurant, :content
    attr_reader :customer, :rating 
    @@all = []

    def initialize(customer, restaurant,rating,content)
    
    @customer = customer 
    @restaurant = restaurant
    @rating = rating 
    @content = content 
    @@all << self

    end 


    def self.all
        @@all
    end 


    def customer 
         self.customer
    end 

   def restaurant 
     #Review.all.find {|ele| ele.customer}
     self.restaurant

   end 


    def rating
        if self.rating.between?(1, 5)
            self.rating
        else 
         return "The rating is not a valid number. Please select a rating between 1-5."
        end 
    end 


    def content
     self.content.to_s
    end 
  
end

