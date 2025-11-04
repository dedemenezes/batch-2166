require_relative "../views/order_view"
require_relative "../views/meal_view"
require_relative "../views/customer_view"
require_relative "../views/session_view"

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository     = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository    = order_repository
    @order_view = OrderView.new
    @meal_view = MealView.new
    @customer_view = CustomerView.new
    @session_view = SessionView.new
  end

  def list_my_orders(employee)
    orders = @order_repository.my_undelivered_orders(employee)
    @order_view.display(orders)
  end

  def mark_as_delivered(employee)
    # 1. listar os pedido do employee
    orders = @order_repository.my_undelivered_orders(employee)
    @order_view.display(orders)
    # 2. perguntar qual marcar
    index = @session_view.ask_for("Index").to_i - 1
    # 3. Marcar como delivered
    order = orders[index]
    # 4. Salvar no csv
    @order_repository.mark_as_delivered(order)
  end

  def add
    # 1.1 Pedir todas as meal para o REPOSITORY
    meals = @meal_repository.all
    # 1.2 Exibir todas as meal
    @meal_view.display(meals)
    # 2. PErguntar qual da lista
    index = @meal_view.ask_for("Index").to_i - 1
    # 3. Acessar a meal correta dentro do array de meals
    meal = meals[index]

    # 1.1 Pedir todas as customer para o REPOSITORY
    customers = @customer_repository.all
    # 1.2 Exibir todas as customer
    @customer_view.display(customers)
    # 2. PErguntar qual da lista
    index = @customer_view.ask_for("Index").to_i - 1
    # 3. Acessar a customer correta dentro do array de customers
    customer = customers[index]

    # 1.1 Pedir todas as employee(rider) para o REPOSITORY
    riders = @employee_repository.all_riders
    # 1.2 Exibir todas as employee(rider)
    @session_view.display(riders)
    # 2. PErguntar qual da lista
    index = @session_view.ask_for("Index").to_i - 1
    # 3. Acessar a employee(rider) correta dentro do array de employee(rider)s
    rider = riders[index]

    order = Order.new(meal: meal, customer: customer, employee: rider)
    @order_repository.create(order)
  end


  def list_undelivered_orders
    # 1. Pedir todos os pedidos não entregues (order repository)
    orders = @order_repository.undelivered_orders
    # 2. Mostrar os orders pro usuário (view)
    @order_view.display(orders)
  end
end
