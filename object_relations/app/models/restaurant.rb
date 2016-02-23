class Restaurant

  @@all = []

  attr_accessor :name, :location

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # input will be "Pizza Hut"
    # Take all of the restaurants, look through them
    self.all.find { |restaurant| restaurant.name == name }
    # return the one whose name matches the input name
    # return will be an instance of the restaurant class with the name "Pizza Hut"
  end

  def reviews
    # pizza_hut = Restaurant.new("Pizza Hut")
    # pizza_hut.reviews

    # an array of instances of the review class where the review is me
    #iterate through all of the review objects and check if review.restaurant is self, then add it to my new array
    Review.all.select {|review| review.restaurant == self }
  end

  def customers
    # pizza_hut = Restaurant.new("Pizza Hut")
    # pizza_hut.customers
    # iterate through all of our reviews and return the customer.
    self.reviews.map { |review| review.customer }
    # an array of instances of the customer class who have left reviews on this restaurant
  end

end
