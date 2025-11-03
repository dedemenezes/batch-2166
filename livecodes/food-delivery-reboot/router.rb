class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    puts "Welcome to Food Delivery app"
    # manter um looping rodando até o usuário apertar 5(quit)
    while @running
      display_options
      # 2. Coletar a ação do usuário
      action = gets.chomp.to_i
      route_action(action)
    end

    puts "See you later!"
  end

  def display_options
    # 1. Mostrar as opções de ação
    puts "1. List all meals"
    puts "2. Add a meal"
    puts "3. List all customers"
    puts "4. Add a customer"
    puts "5. Quit"
  end

  def route_action(action)
    # 3. Chamar o metódo correto do controller correto
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5
      @running = false
    else
      puts "Choose between 1,2 or 5"
    end
  end
end
