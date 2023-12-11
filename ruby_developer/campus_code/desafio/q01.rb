letras = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

resultado = []
index = 0

for letra in letras do
  if index % 3 == 0 && index != 0
    resultado << letra.upcase
  else
    resultado << letra
  end
  index = index + 1
end

puts resultado