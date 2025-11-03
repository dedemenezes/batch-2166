class CustomerView
  def display(customers)
    # iterar por todas as customer
    customers.each do |customer|
      # para cada customer
      # exibir o nome e o endereço
      puts "#{customer.id}. #{customer.name} | #{customer.address}"
    end
  end

  def ask_for(item)
    puts "#{item}?"
    answer = gets.chomp
    return answer
  end
end
