
require "csv"
require_relative "../models/employee.rb"

class EmployeeRepository
  # READ ONLY
  def initialize(csv_file_path)
    @csv_file = csv_file_path
    @employees = []

    load_csv if File.exist?(csv_file_path)
  end

  def find_by_username(username)
    @employees.find do |employee|
      employee.username == username
    end
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |line|
      # p line
      # 1. converte os valores para os tipos corretos
      line[:id] = line[:id].to_i
      # 2. recria as instancias
      employee = Employee.new(line)
      # 3. adiciona ao array
      @employees << employee
    end
  end
end
