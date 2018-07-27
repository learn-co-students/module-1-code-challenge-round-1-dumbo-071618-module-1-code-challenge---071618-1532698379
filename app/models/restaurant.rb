class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    Restaurant.all.find do |shop|
      shop.name.downcase == name.downcase
    end
  end

  def all_restaurant
    Review.all.select do |person|
      person.customer == self
    end
  end

  def customers
    temp = []
    self.all_restaurant.select do |person|
      if !(temp.include? person.user)
        temp << person.user
      end
    end
   end

  def reviews
  end

end
