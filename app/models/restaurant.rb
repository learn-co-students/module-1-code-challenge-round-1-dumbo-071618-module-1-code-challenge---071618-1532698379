class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def customers #knows its customers through the Reviews
    restReview.all.select do |review|
      review.restaurant == self
    end

  end

end
