# Construa uma calculadora que receba dois numeros inteiros e imprima o resultado das 
# as operacoes basicas Somar, Subtrair, Multiplicar e Dividir. 

total = ''
SOMA = 1
SUBTRACAO = 2
MULTIPLICACAO = 3
DIVISAO = 4
SAIR = 0

def imprimir_menu()
    system "clear"
    puts "[#{SOMA}] - Soma"
    puts "[#{SUBTRACAO}] - Subtracao"
    puts "[#{MULTIPLICACAO}] - Multiplicacao"
    puts "[#{DIVISAO}] - Divisao"
    puts "[#{SAIR}] - Sair"
    print 'Escolha uma opcao: '
    return gets.to_i()
end

loop do
    puts "O resultado e #{total}"
   
    opcao = imprimir_menu()
        
    case opcao
    when 0
        puts 'obrigado por usar a nossa calculadora.'
        break
    when 1
        print 'Digite o primeiro numero: '
        first_number = gets.chomp.to_i
        print 'Digite o segundo numero: '
        second_number = gets.chomp.to_i
        total = first_number + second_number
        puts "O resultado e #{total}"
        print 'Pressione qualquer tecla para continuar!'
        gets
    when 2
        print 'Digite o primeiro numero: '
        first_number = gets.chomp.to_i
        print 'Digite o segundo numero: '
        second_number = gets.chomp.to_i
        total = first_number - second_number
        puts "O resultado e #{total}"
        print 'Pressione qualquer tecla para continuar!'
        gets
    when 3
        print 'Digite o primeiro numero: '
        first_number = gets.chomp.to_i
        print 'Digite o segundo numero: '
        second_number = gets.chomp.to_i
        total = first_number * second_number    
        puts "O resultado e #{total}"
        print 'Pressione qualquer tecla para continuar!'
        gets
    when 4
        print 'Digite o primeiro numero: '
        first_number = gets.chomp.to_i
        print 'Digite o segundo numero: '
        second_number = gets.chomp.to_i
        while second_number == 0
            print 'Digite o segundo numero diferente de 0: '
            second_number = gets.chomp.to_i
        end
        total = first_number / second_number
        puts "O resultado e #{total}"
        print 'Pressione qualquer tecla para continuar!'
        gets
    else
        puts 'Opcao invalida. Pressione qualquer tecla para continuar!'
        gets
    end
    
end