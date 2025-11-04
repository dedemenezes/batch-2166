class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts BONUS
    puts "Welcome to Food Delivery app"
    while @running
      @employee = @sessions_controller.login
      while @employee
        if @employee.manager?
          display_manager_options
          action = gets.chomp.to_i
          print `clear`
          route_manager_action(action)
        else
          display_rider_options
          action = gets.chomp.to_i
          print `clear`
          route_rider_action(action)
        end
        puts "---"
      end
    end

    puts "See you later!"
  end

  def display_manager_options
    puts "-----Manager Menu-----"
    puts "1. List all meals"
    puts "2. Add a meal"
    puts "3. List all customers"
    puts "4. Add a customer"
    puts "8. Logout"
    puts "9. Quit"
  end

  def display_rider_options
    puts "-----Rider Menu-----"
    puts "1. mark one of my orders as delivered"
    puts "2. list all my undelivered orders"
    puts "8. Logout"
    puts "9. Quit"
  end

  def logout
    @employee = false
  end

  def stop
    logout
    @running = false
  end

  def route_rider_action(action)
    case action
    when 1 then puts "TODO: MARK AS DELIVERED"
    when 2 then puts "TODO: LIST UNDELIVERED ORDERS"
    when 8 then logout
    when 9
      stop
    else
      puts "Choose between 1,2 or 5"
    end
  end

  def route_manager_action(action)
    # 3. Chamar o metódo correto do controller correto
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 8
      logout
    when 9
      stop
    else
      puts "Choose between 1,2 or 5"
    end
  end
  BONUS = "

          (_\\
         / \\
    `== / /\\=,_
     ;--==\\\\  \\\\o
     /____//__/__\\
   @=`(0)     (0)

  "
end
