class SessionView
  def ask_for(stuff)
    puts "#{stuff}?"
    gets.chomp
  end

  def welcome(employee)
    puts "BEM VINDO #{employee.username}"
  end

  def wrong_credentials
    puts "usuario/senha invalidos. Tente novamente."
  end

  def display(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.username} - #{employee.role}"
    end
  end
end
