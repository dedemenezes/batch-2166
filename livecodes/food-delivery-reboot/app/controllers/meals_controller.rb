require_relative "../views/meal_view"

class MealsController
  def initialize(meal_repository)
    # repository
    @meal_repository = meal_repository
    # view
    @meal_view = MealView.new
  end

  def add
    # 1. Perguntar pro usuário o nome
    name = @meal_view.ask_for("Name")
    # 2. Perguntar pro usuário o preço
    price = @meal_view.ask_for("Price").to_i
    # 3. Instanciar uma nova meal (criar uma nova meal)
    meal = Meal.new(name: name, price: price)
    p meal
    # 4. Pedir pro repositório CRIAR DE FATO!
    @meal_repository.create(meal)
  end

  def list
    # 1. Pedir ao repository todas as meals
    meals = @meal_repository.all
    # 2. Pedir para a view mostrar as meals
    @meal_view.display(meals)
  end
end
