class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def customer
    # will return the customer who made this review
    # find the customer from the customer's table whose ID is my customer_id and turn it into an object
    Customer.find(self.customer_id)
  end

  def restaurant
    the_restaurants_id = self.restaurant_id
    Restaurant.find(the_restaurants_id)
  end
end

review = Review.new(customer_id: 5, restaurant_id: 2)
review.customer_id
Customer.find
