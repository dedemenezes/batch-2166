# carregar a classe CSV do ruby
require "csv"

# TODO - let's read/write data from beatles.csv
# filepath = "data/beatles.csv"

# CSV.foreach("./data/beatles.csv", headers: :first_row) do |line|
#   puts line["First Name"]
#   # puts "##################"
#   # p line[0]
# end

alunos = [
  ["Matheus", "Bastos", "Piano"],
  ["Júlia", "Matta", "Violão"],
  ["Rodrigo", "Leocadio", "Bateria"]
]


CSV.open("./data/beatles.csv", "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  alunos.each do |aluno|
    csv << aluno
  end
end
