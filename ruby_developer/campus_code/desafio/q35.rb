#Questão 35
#Analise o código Ruby abaixo:

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
caixa = []

def metodo(valor)
        if numero % 2 != 0
            true    
        end
end

numeros.each do |numero|
        if metodo(numero)
            caixa << numero
        end
end
p caixa
=begin
Para que ao final da execução o código armazene em caixa os valores 2, 4, 6, 8 e 10 é preciso substituir _________ por:

Alternativas:
valor % 2 == 0

valor% != 0

numero.even?

numero % 2 != 0

=end