class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@all_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self

    @@all_names << "#{first_name} #{last_name}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all_names.find do |allname|
      allname == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all_names
  end

end
