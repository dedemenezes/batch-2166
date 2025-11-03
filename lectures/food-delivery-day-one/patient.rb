class Patient
  attr_reader :nome, :curado
  attr_accessor :room, :id

  def initialize(atributos={})
    @nome = atributos[:nome]
    @curado = atributos[:curado] || false
    @idade = atributos[:idade]
  end

  def curar!
    @curado = true
  end

end

# andre = Patient.new(nome: "Andre")
# p andre.nome
# p andre.curado

# puts "#{andre.nome} #{andre.curado ? "Está saudável" : "Curando..."}"

# andre.cure!
# p andre.curado

# p andre

# rocky = Patient.new({nome: 'Rocky', idade: 43})

# p rocky

# chloe = Patient.new({nome: 'Chloe', curado: true, idade: 43})
# p chloe
