#=> Andre Menezes

def capitalize_name(first_name, last_name)
  # 1. capitalizar o primeiro nome
  # 2. capitalizar o segundo nome
  # 3. Retonar o nome correto
  first_name_capitalized = first_name.capitalize
  last_name_capitalized = last_name.capitalize
  return "#{first_name_capitalized} #{last_name_capitalized}"
end

nome = "anDRE"
sobrenome = "meneZES"

teacher_name = capitalize_name(nome, sobrenome)

puts "Teacher name is: #{teacher_name}"
# The teacher name is: Andre Menezes
