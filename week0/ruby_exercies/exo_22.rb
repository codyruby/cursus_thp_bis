puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
number = gets.chomp
puts "Voici le pyramide :"
n = 1
while n <= number.to_i
    puts '*' * (2 * n - 1)
    n= n + 1
end