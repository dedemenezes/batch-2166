require "csv"
require "pry-byebug"

require_relative "../models/order"

class OrderRepository
  def initialize(csv_file_path, meal_repository, customer_repository, employee_repository)
    @csv_file            = csv_file_path
    @meal_repository     = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders              = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def create(order)
    @orders << order
    order.id = @next_id
    save_csv
  end

  def undelivered_orders
    @orders.reject { |order| order.delivered? }
  end

  def my_undelivered_orders(employee)
    undelivered_orders.select { |order| order.employee == employee }
  end

  def mark_as_delivered(order)
    order.deliver!
    save_csv
  end

  private

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << %i[id delivered meal_id customer_id employee_id]
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |line|
      # p line
      # 1. Converter os dados para os tipos corretos
      line[:id] = line[:id].to_i
      line[:delivered] = line[:delivered] == "true"
      # Achar a meal correta atraves do meal_id
      line[:meal] = @meal_repository.find(line[:meal_id].to_i)
      line[:customer] = @customer_repository.find(line[:customer_id].to_i)
      line[:employee] = @employee_repository.find(line[:employee_id].to_i)
      # 2. Recriar o order
      # p line
      # order = Order.new(id: id, meal: meal, customer: customer, employee: employee, delivered: delivered)
      order = Order.new(line)
      # 3. Adicionar ao array de orders
      @orders << order
    end
    # Atribuir o próximo id
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1
  end
end
