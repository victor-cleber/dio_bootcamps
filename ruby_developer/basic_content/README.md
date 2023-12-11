Tenille martins linkedin
Tenille10 - git hub 

Estruturas de controle
Em ciência da computação, estrutura de controle (ou fluxo de controle) refere-se à ordem em que instruções, expressões e chamadas de função são executadas ou avaliadas em programas de computador sob programação imperativa ou funcional.

Os tipos de estruturas de controle disponíveis diferem de linguagem para linguagem, mas podem ser cruamente caracterizados por seus efeitos. O primeiro é a continuação da execução em uma outra instrução, como na estrutura sequencial ou em uma instrução jump. O segundo é a execução de um bloco de código somente se uma condição é verdadeira, uma estrutura de seleção. O terceiro é a execução de um bloco de código enquanto uma condição é verdadeira, ou de forma a iterar uma coleção de dados, uma estrutura de repetição. O quarto é a execução de instruções distantes entre si, em que o controle de fluxo possivelmente volte para a posição original posteriormente, como chamadas de subrotinas e corotinas. O quinto é a parada do programa de computador.

Interrupções e sinais são mecanismos de baixo nível que podem alterar o fluxo de controle de forma similar a uma sub-rotina, mas geralmente em resposta a algum estímulo externo ou um evento ao invés de uma estrutura de controle em uma linguagem.

Em nível de linguagem de máquina, as instruções de estruturas de controle geralmente funcionam ao alterar o contador de programa. Para algumas CPUs, as únicas instruções de estruturas de controle disponíveis são os diversos tipos de jump condicional.


Condicionais ajudam a tomar uma decisao - 
if, esle, elsif - se uma instrucao e verdadeira execute o codigo 


```se esse dia da semana for domingo imprimia que o nosso almoco sera especial
# IF e uma condicional que avalia a condicao e executa o codigo se o resultado for verdadeiro

dia = gets.chomp()
if dia == 'domingo'
    almoco = 'especial'
elseif dia == 'feriado' #quando e necessario testar mais de uma situacao para a mesma condicao 
    almoco = 'mais tarde'
else
    almoco = 'normal'
end
    puts "Hoje o nosso almoco sera #{almoco}"
```

escrever artigo do unless como usar e mais exemplos
```unless a nao ser que + elegante que if not
# Unless e uma condicional que executa o codigo quando o resultado da condicao for falso
# o mesmo que if != [condicao]

x = 10
unless x > 15 a menos que x seja maior que quinze
    puts 'x e menor ou igual a 15'
else
    puts 'x e maior que 15'
end
```

``` # CASE usado quando vc precisar de diversos if para testar a mesma condicao
    # Usuario informa mes de nascimento

puts 'Informe seu mes de nascimento: '

mes_de_nascimento = gets.chomp.to_i()

case mes_de_nascimento 
when 1..6
    puts 'Voce nasceu no primeiro trimestre do ano!'
when 6..12
    puts 'Voce nasceu no segundo trimestre do ano!'
else
    puts 'Voce informou um valor invalido. Tente novamente!'
end
```

Repeticao ou iteracao - repetem a instrucao infinitas x 
``` FOR - percorre uma lista de elementos = colecoes
#imprima uma lista com as linguagens de programacao q vc gosta
#criar a lista
linguagens = ['Ruby', 'Go', 'Ruby', 'C++']

#iterar na lista

for linguagem in linguagens
    puts "- #{linguagem}
end


 ```
```#WHILE repete um bloco enquanto a condicao for verdadeira
    comparar um numero com uma condicao
    imprimir todos numeros maiores que 1 e menor que 100
num = 1
while num < 100
    puts num
    num += 100 #incrementa o num
end
```

```
# times executa uma repeticao por determinado numero de vezes
6.times {puts 'oi'}  quebra linha
6.times {print 'oi '} nao quebra linha

caso precise colocar comandos em mais de uma linha devemos usar o do
4 times do
    puts 'oi
    print
end


20.times do |contador| #comeca a contar do 0
    puts "#{contador}"
end
```


```
DoWhile tambme conhecido como loop
fazer enquanto e so para com a instrucao break

criar um contador
loop de execuccao
condicao -> se contador nao for = 150

count = 0
loop do
    puts count
    if count == 150
        break
    end
    count += 1
end
```


#Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

PI = 3.14159
raio = gets().to_f

#TODO:  Crie as condições necessárias para o programa calcular o volume
VOLUME = (4/3.0) * PI * raio ** 3

puts "VOLUME = #{VOLUME.round 3}"

puts format("VOLUME = %.3f",VOLUME)

Desafio
Faça um programa que calcule e mostre o volume de uma esfera sendo fornecido o valor de seu raio (R). A fórmula para calcular o volume é: (4/3) * pi * R3. Considere (atribua) para pi o valor 3.14159.

Dica: Ao utilizar a fórmula, procure usar (4/3.0) ou (4.0/3), pois algumas linguagens (dentre elas o C++), assumem que o resultado da divisão entre dois inteiros é outro inteiro.

Entrada
O arquivo de entrada contém um valor de ponto flutuante (dupla precisão), correspondente ao raio da esfera.

Saída
A saída deverá ser uma mensagem "VOLUME" conforme o exemplo fornecido abaixo, com um espaço antes e um espaço depois da igualdade. O valor deverá ser apresentado com 3 casas após o ponto.

 
Exemplos de Entrada	                Exemplos de Saída
3

             VOLUME = 113.097                

15                              

             VOLUME = 14137.155            

1523                          

             VOLUME = 14797486501.627





             #Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int
# "require'bigdecimal'": É a importação de uma biblioteca BigDecimal
#que fornece suporte para operações aritméticas muito mais precisas
#utilizando números decimais. Para utiliza-la usamos BigDecimal(AVariavel)

require 'bigdecimal'

line = gets.split(" ")
a = line[0].to_i
b = line[1].to_i

#TODO:  Crie as condições necessárias para calcular o número
#médio de coxinhas
#puts "#{a.to_f / b.to_f}"
puts format("%.2f",a.to_f / b.to_f)