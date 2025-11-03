require "csv"
require_relative "../models/customer"

class CustomerRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []

    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def create(customer)
    # #<Customer:0x00007f0f5b383710 @id=nil, @name="burg", @address=10>
    # 1. Atribuir o ID
    customer.id = @next_id
    @next_id += 1
    # 2. Adicionar ao array
    @customers << customer
    # 3. Salvar no CSV
    save_csv
  end

  def all
    @customers
  end

  # @customer_repository.find(543)
  def find(id)
    @customers.find do |customer|
      # retorna o elemento em que
      # a condição do bloco
      # retorna TRUE
      customer.id == id
    end
  end

  private

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      # 1. puxar os headers
      # csv << [:id, :name, :address]
      csv << %i[id name address]
      # 2. Puxar TODAS as customers
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

  def load_csv
    # 1. Ler o CSV linha a linha
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |line|
      # 2. Para cada linha
      # p line #=> #<CSV::Row id:"1" name:"andre" address:"Rio de Janeiro">
      # 2.1 Converter os atributos para o tipo correto
      line[:id] = line[:id].to_i
      # 2.2 Recriar a customer
      customer = Customer.new(line)
      # p customer
      # 2.3 Colocar a customer no array de customers
      @customers << customer
    end
    # 3. Preparar o próximo id
    # p @customers
    # p @customers.last
    # p @customers.last.id
    @next_id = @customers.empty? ? 1 : @customers.last.id + 1
  end
end
