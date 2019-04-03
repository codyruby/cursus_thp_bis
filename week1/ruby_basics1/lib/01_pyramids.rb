
def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    number = gets.chomp
    puts "Voici le pyramide :"
    i = 1
    while i <= number.to_i
        puts '*' * (2 * i - 1)
        i = i + 1
    end
end
 
half_pyramid

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    number = gets.chomp
    puts "Voici le pyramide :"
    i = 0
    while i <= number.to_i - 1
        print ' ' * (number.to_i - i)
        puts '*' * (2 * i + 1)
        i += 1
    end
end

full_pyramid

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisi un nombre impair)"
    number = gets.chomp.to_i
    number2 = number/2
    puts "Voici la pyramide :"
        i = 0
        while i <= number - 1
            if i < number2          
                print ' ' * (number2 - i)
                puts '#' * (2 * i + 1)
                i += 1
            elsif i > number2
                print ' ' * (i - number2)
                puts '%' * (2 * number - i * 2 - 1)
                i += 1
            else 
                puts '#' * number
                i += 1
            end    
        end
end

wtf_pyramid
