class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end


    def self.find_by_name(name)
      Customer.all.find do |person|
        person.full_name.downcase == name.downcase
      end
    end

    def self.find_all_by_first_name(name)
      Customer.all.find_all do |person|
        person.first_name.downcase == name.downcase
      end
    end

    def self.all_names
      Customer.all.collect do |person|
        person.full_name
      end
    end

    def add_review(restaurant, content, rating)
     Review.new(self, restaurant, rating, content)
   end

   def num_reviews
     all_reviews = Review.all.select do |review|
       review.customer == self
     end
     all_reviews.length
   end

   # def restaurants
   #   all_reviews = Review.all.collect do |review|
   #     review.customer == self
   #   end
   #   all_reviews.uniq
   # end

   def all_reviews
     Review.all.select do |person|
       person.customer == self
     end
   end

   def restaurants
     temp = []
     self.all_reviews.select do |person|
       if !(temp.include? person.restaurant)
         temp << person.restaurant
       end
     end
    end

   

end
