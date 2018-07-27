class Customer
    attr_accessor :first_name, :last_name
    @@all = []
  
    def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    @@all 
  end 

  def self.find_by_name(name)
    ans  = Customer.all.find do |cust|
    #cust.first_name == name.split[0] && cust.last_name == name.split[1] 
    cust.full_name == name
    end 
   ans 
  end 


  def self.find_all_by_first_name(name)
     Customer.all.select do |ele|
       ele.first_name == name
     end 


  end 


  def self.all_names

    Customer.all.map do |ele|
      ele.full_name

    end 

  end 






end
