puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
number = gets.chomp
puts "Voici le pyramide :"
number.to_i.times {|i| 
    puts '*' * (2 * i + 1)}