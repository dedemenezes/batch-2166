# ENCAPSULATION

class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id    = attributes[:id]
    @name  = attributes[:name]
    @price = attributes[:price]
  end
end





# pizza = Meal.new(id: 1, name: "Pizza", price: 7)
# strogonoff = Meal.new(id: 2, name: "Strogonoff", price: 12)

# p pizza
# p strogonoff
