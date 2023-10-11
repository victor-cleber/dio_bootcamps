#Create a ruby program to validate a CPF.
require "cpf_cnpj"

class CPFValidator
  attr_accessor :cpf

  def validate()
    if CPF.valid?(@cpf)
      puts "O cpf #{@cpf} e valido" 
    else
      puts "Sorry! O cpf #{@cpf} e invalido"
    end
  end

  def main() 
    print "Informe o numero do cpf (somente numeros): "
    @cpf = gets.chomp
    validate
  end
end