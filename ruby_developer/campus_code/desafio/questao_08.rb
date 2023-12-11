# Questão 8 - Analise o código Ruby abaixo:

numeros = [5, 3, 24, 6, 72, 7, 86, 54, 5, 97]
i = 0
valor = 0

while i < numeros.length
  valor = numeros[i] if numeros[i] > valor
  i += 1
end

puts valor

#Para que no final o valor retornado seja igual a 97, o código dentro do bloco while deve ser:

#Alternativas:
#valor << numeros[i] if valor == numero[i]

#valor << numeros[i] if numeros[i] > valor

#return numeros[i] if numeros[i] >= valor

#>> valor = numeros[i] if numeros[i] > valor