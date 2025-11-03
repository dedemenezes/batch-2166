require_relative "../views/customer_view"

class CustomersController
  def initialize(customer_repository)
    # repository
    @customer_repository = customer_repository
    # view
    @customer_view = CustomerView.new
  end

  def add
    # 1. Perguntar pro usuário o nome
    name = @customer_view.ask_for("Name")
    # 2. Perguntar pro usuário o preço
    address = @customer_view.ask_for("Address")
    # 3. Instanciar uma nova customer (criar uma nova customer)
    customer = Customer.new(name: name, address: address)
    # p customer
    # 4. Pedir pro repositório CRIAR DE FATO!
    @customer_repository.create(customer)
  end

  def list
    # 1. Pedir ao repository todas as customers
    customers = @customer_repository.all
    # 2. Pedir para a view mostrar as customers
    @customer_view.display(customers)
  end
end
