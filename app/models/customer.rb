class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end



  def add_review (restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
  number_reviews =  Review.all.select do |reviews|
      reviews.customer == self
    end
    number_reviews.length
  end

  def self.full_names ##also works as all_names
    self.all.map {|customer| customer.first_name + " " + customer.last_name}
  end



  def self.find_name(full_name)

     splitted = full_name.split(' ')
     @@all.find do |customer|
       customer.first_name == splitted[0] && customer.last_name == splitted[1]

     end
   end


  def self.all
    @@all
  end



end
