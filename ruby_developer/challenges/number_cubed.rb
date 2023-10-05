numbers = []
for i in 0..2 do
    puts "Informe o #{i + 1} numero: "
    numbers[i] = gets.chomp.to_i
end
puts
puts "Calculando..."
numbers.each do | n |
    puts n ** 3
end