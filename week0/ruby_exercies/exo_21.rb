puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
number = gets.chomp
puts "Voici le pyramide :"
number.to_i.times {|i| 
    print ' ' * (number.to_i - 2 * i + number.to_i)
    puts '*' * (2 * i + 1)}