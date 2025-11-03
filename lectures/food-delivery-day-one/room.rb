require_relative "patient.rb"

class Room
  attr_reader :pacientes
  attr_accessor :id

  def initialize(attributes={})
    @nome_da_porta = attributes[:nome_da_porta]
    @numero_de_camas = attributes[:numero_de_camas]
    @pacientes = attributes[:pacientes] || [] # Array
  end

  def full?
    @pacientes.size == @numero_de_camas
  end

  def add_patient(paciente)
    # checar se está cheio
    if full?
      raise StandardError, "Quarto está cheio"
    else
      @pacientes << paciente # instancia da classe pacientes no array
      # Atribuir um quarto ao paciente
      paciente.room = self # é o próprio quarto que chamou o método
    end
  end
end

# quarto_um = Room.new(nome_da_porta: "Rock 01", numero_de_camas: 2)
# # p quarto_um

# andre = Patient.new(nome: "Andre")


# quarto_um.add_patient(andre)
# # p andre.room
# p quarto_um

# p quarto_um.patients
# rocky = Patient.new(nome: "Rocky")
# quarto_um.add_patient(rocky)
# p quarto_um


# chico = Patient.new(nome: 'Chico')
# quarto_um.add_patient(chico)
# p quarto_um
