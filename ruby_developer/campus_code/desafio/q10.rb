letras = ['a', 'a', 'b', 'c', 'd', 'd', 'e', 'e', 'f', 'g', 'g']
resultado = []
i = 0
letras.each do |letra|
  i += 1
  if i % 3 == 0
    resultado << letra.upcase
  else
    resultado << letra
  end
end

puts resultado
print resultado