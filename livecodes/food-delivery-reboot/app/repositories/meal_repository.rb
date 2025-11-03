require "csv"
require_relative "../models/meal"

class MealRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []

    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def create(meal)
    # #<Meal:0x00007f0f5b383710 @id=nil, @name="burg", @price=10>
    # 1. Atribuir o ID
    meal.id = @next_id
    @next_id += 1
    # 2. Adicionar ao array
    @meals << meal
    # 3. Salvar no CSV
    save_csv
  end

  def all
    @meals
  end

  # @meal_repository.find(543)
  def find(id)
    @meals.find do |meal|
      # retorna o elemento em que
      # a condição do bloco
      # retorna TRUE
      meal.id == id
    end
  end

  private

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      # 1. puxar os headers
      # csv << [:id, :name, :price]
      csv << %i[id name price]
      # 2. Puxar TODAS as meals
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

  def load_csv
    # 1. Ler o CSV linha a linha
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |line|
      # 2. Para cada linha
      # p line #=> #<CSV::Row id:"1" name:"pizza" price:"7">
      # 2.1 Converter os atributos para o tipo correto
      line[:id] = line[:id].to_i
      line[:price] = line[:price].to_i
      # p line #=> #<CSV::Row id:1 name:"pizza" price:7>
      # 2.2 Recriar a meal
      meal = Meal.new(line)
      # p meal
      # 2.3 Colocar a meal no array de meals
      @meals << meal
    end
    # 3. Preparar o próximo id
    # p @meals
    # p @meals.last
    # p @meals.last.id
    @next_id = @meals.empty? ? 1 : @meals.last.id + 1
  end
end
