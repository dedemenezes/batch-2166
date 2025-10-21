# TDD
# TEST DRIVEN DEVELOPMENT
require 'date'

# bota o def para definir o metodo
# Nome
# Parametros
# Retorno
def dias_restantes_pro_natal(year, month, day)
  # dia do natal - dia de hoje
  puts year.class
  natal = Date.new(year, 12, 25)
  hoje = Date.new(year, month, day)
  (natal - hoje).to_i
end

puts 'Qual ano?'
ano = gets.chomp.to_i
# puts ano.class

puts 'Qual mês?'
mes = gets.chomp.to_i

puts 'Qual dia?'
dia = gets.chomp.to_i

puts dias_restantes_pro_natal(ano, mes, dia)
puts dias_restantes_pro_natal(2026, 2, 20).class == Integer
# puts dias_restantes_pro_natal(2025, 2, 20) == 308
