
letras = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
numeros = ['1', '2', '3', '4', '5', '6', '7']
index = 0
resultado = []
for letra in letras do
  if index % 2 != 0
    resultado << letra
  else
    resultado << numeros[index]
  end
  index = index + 1
end
puts resultado