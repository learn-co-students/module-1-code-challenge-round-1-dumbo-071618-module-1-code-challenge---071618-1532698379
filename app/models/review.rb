class Review
  attr_reader :restaurant, :customer
  attr_accessor :rating, :content
  @@all = []

  def initialize(args)
    args.each do |key,value|
      if self.respond_to? "#{key}=".to_sym
        self.send("#{key}=", value)
      end
    end
  end

  def self.all
    @@all
  end   



end
