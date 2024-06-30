# Importa a biblioteca CPF da gem
require 'cpf_cnpj'

# Função para verificar se um CPF é válido
def validar_cpf(cpf)
  return CPF.valid?(cpf)
end

# Função principal para rodar no terminal
def main
  # Solicita ao usuário para inserir um CPF
  print "Digite um CPF para verificar se é válido: "
  cpf = gets.chomp

  # Verifica se o CPF é válido usando a função validar_cpf
  if validar_cpf(cpf)
    puts "O CPF #{cpf} é válido!"
  else
    puts "O CPF #{cpf} é inválido!"
  end
end

# Executa a função principal
main if __FILE__ == $PROGRAM_NAME
