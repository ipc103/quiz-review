class Customer

  @@all = []
  attr_accessor :name, :hometown

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_review(restaurant, content)
    #called on instances of customer
    #create a new review and associate it with customer and the restaurant
    review = Review.new(restaurant, self)
    review.content=(content)
  end

  def add_restaurant(restaurant_name)
    restaurant = Restaurant.new(restaurant_name)
  end

end

customer = Customer.find_by_name("Harrison")
restaurant = Restaurant.find_by_name("Pizza Hut")
customer.add_review(restaurant, "Stuffed Crust Rules!!!")

customer.add_restaurant("Pizza Hut")
