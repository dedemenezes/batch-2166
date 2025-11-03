class MealView
  def display(meals)
    # iterar por todas as meal
    meals.each do |meal|
      # para cada meal
      # exibir o nome e o preço
      puts "#{meal.id}. #{meal.name} | #{meal.price}"
    end
  end

  def ask_for(item)
    puts "#{item}?"
    answer = gets.chomp
    return answer
  end
end
