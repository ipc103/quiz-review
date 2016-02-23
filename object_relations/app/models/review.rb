class Review

  attr_accessor :restaurant, :customer, :title, :content, :rating

  @@all = []

  def initialize(restaurant, customer)
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

end
