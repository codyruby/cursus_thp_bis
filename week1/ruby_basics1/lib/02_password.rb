def pass
    puts 'Défini un mot de passe :'
    password = gets.chomp
    return password
end


def perform
    password = pass
    a = 0
    while password != a
        puts "Quel est ton mot de passe?"  
        a = gets.chomp
    end
    puts "********************"
    puts "* * * BIENVENU * * *"  
    puts "********************"   
end

perform


def signup 
    puts 'Défini le mot de passe :'
    print '>' 
    password2 = gets.chomp
    return password2
end

def login
    password2 = signup
    puts 'Quel est ton mot de passe?'
    a = gets.chomp
    while password2 != a
        puts 'Erreur de mot de passe:'
        puts 'Quel est ton mot de passe?'
        print '>'
        a = gets.chomp       
    end
end

def welcome_screen
    puts " "
    puts"********************"
    puts "* * * BIENVENU * * *" 
    puts "* * * * A LA * * * *"
    puts "* * SECRET--PAGE * *"
    puts "********************"  
    puts " "
    puts "Un sourire est une clef secrète qui ouvre bien des coeurs."
    puts " "
end

def perform2
    login
    welcome_screen
end

perform2



