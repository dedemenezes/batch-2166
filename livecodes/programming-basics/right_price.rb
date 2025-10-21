
# INSTRUÇÕES
#
# 1. Escolher um número randomico de 1 até 100
# 1.1 criar um range de 1 até 100
# 1.2 pegar um numero aleatorio
numero = (1..5).to_a.sample
# 2. Inicializar um contador para guardar as tentativas

# 3. Perguntar qual numero?
# LOOPING DEVE COMEÇAR AQUI
# ATRIBUIR UM VALOR A VARIAVEL PALPITE
# QUE GARANTA A CONDIÇÃO ABAIXO COMO VERDADEIRA
contador = 0
palpite = ''
while palpite != numero
  puts "Qual número?"
  palpite = gets.chomp.to_i
  # 4. Comparar o palpite com numero sorteado
  if palpite == numero
    # Dizer que acertou
    puts "Parabéns! Você acertou!! zo/"
  else
    # 5. Se não for igual comparar se é maior ou menor que o numero sorteado
    if palpite > numero
      puts "O numero é menor do que seu palpite"
    else
      puts "O numero é maior do que seu palpite"
    end
  end
  # 7. Incrementar o contador
  contador = contador + 1
end
puts "Foram necessárias #{contador} tentativas"
