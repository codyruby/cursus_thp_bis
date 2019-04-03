# Tu vas maintenant coder un super jeu qui déchire. Mario n'a qu'à bien se tenir avec sa pyramide ! 
# Nous allons imaginer un programme dans lequel une gentille personne va devoir monter 10 marches 
# en fonction d'un jet de dé. Une version informatique du jeu de l'oie en quelque sorte !

#  Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. 
# Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :

# # S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
# Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, 
# et le jeu se termine.


# Carte initiale du jeu

    puts "\n*************************************************"
    puts "*                                               *"
    puts "*         Welcome to the STAIRWAY-GAME          *"
    puts "*                                               *"
    puts "*************************************************"
    puts ""  

def initiale_game(play_map0)
    play_map0.each do |i|
        print ' ' * 15
        puts "#{i.join}"
    end
    
    puts ""
    puts "        You are in the level zero\n "
end  

# Fonction pour lancer le dé
    
def roll_die
    puts "\n*************************************************"
    puts "*                                               *"
    puts "*         To roll the die press Enter:          *"
    puts "*                                               *"
    puts "*************************************************"

    enter = gets
    number_roll_die = rand(6) + 1
    p number_roll_die 
end

# Fonction pour annoncer la victoire

def win(arr)
    puts "\n*************************************************"
    puts "*                                               *"
    puts "*            !!! CONGRATULATION !!!             *"
    puts "*                                               *"
    puts "*************************************************"
    arr.each do |i|
        print ' ' * 15
        puts "#{i.join}"
    end
    
    puts ""
    puts "              You are the best !!!\n "
end


# Fonction qui permet de monter ou descendre d'un étage et indiquer la position et l'évolution

def game(all_play_map, play_map11_win, play_map0)
   
    number_postion_player = 0
    last_number_position_player = 0
    
   if last_number_position_player >= 0  

        while (last_number_position_player >= 0) && (last_number_position_player != 10)  
            number_roll_die = roll_die

            # Si le résultat du dé et égal à 5 ou 6
            if (number_roll_die == 5) || (number_roll_die == 6)
                new_number_position_player = last_number_position_player + 1
                player_position = all_play_map.at(new_number_position_player)
                player_position.each do |i|
                    print ' ' * 15
                    puts "#{i.join}"
                end  
                puts ""
                puts "        You go up to the next level \n        You are in the level #{new_number_position_player}\n "
                last_number_position_player = new_number_position_player
               
            # Si le résultat du dé et égal à 2 ou 3 ou 4
            elsif (number_roll_die == 2) || (number_roll_die == 3) || (number_roll_die == 4)
                
                if last_number_position_player == 0
                    play_map0.each do |i|
                        print ' ' * 15
                        puts "#{i.join}"
                    end
                    puts ""
                    puts "        You are on the level zerooo\n "
                    last_number_position_player = 0               
                else
                    new_number_position_player = last_number_position_player - 1
            
                    player_position = all_play_map.at(new_number_position_player)
                    player_position.each do |i|
                        print ' ' * 15
                        puts "#{i.join}"
                    end  
                    puts ""
                    puts "        You go down to the previous level \n        You are in the level #{new_number_position_player}\n "
                    last_number_position_player = new_number_position_player
                end
            # Sinon le résultat est égal à 1           
            else 
                new_number_position_player = last_number_position_player 
                player_position = all_play_map.at(new_number_position_player)
                player_position.each do |i|
                    print ' ' * 15
                    puts "#{i.join}"
                end  
                puts ""
                puts "        You are in the same level \n        You are in the level #{last_number_position_player}\n "
                last_number_position_player = new_number_position_player
            end            
        end
    # S'il n'y a plus de conditions, c'est la victoire
    win(play_map11_win)
    end
    
end

# Tous les tableaux de jeu (un pour chaque étage)

play_map0 = [  
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    ["@", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]
 
    # position = [10,1]

    # playmap0[10][1] = "@"

play_map1 = [  
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "@", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]

play_map2 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "@", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]
   
play_map3 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "@", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]  
   
play_map4 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "@", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]  
  
play_map5 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "@", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]
     
play_map6 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "@", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]
                        
play_map7 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "@", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]  
                                           
play_map8 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "@", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ] 

play_map9 = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "@", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]  
    
play_map11_win = [
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "@",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", " ", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", " ", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", " ", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", " ", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", " ", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", " ", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", " ", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", " ", "#", "#", "#", "#", "#", "#", "#", "#", "#",],
    [" ", "#", "#", "#", "#", "#", "#", "#", "#", "#", "#",]
    ]  

all_play_map = [play_map0, play_map1, play_map2, play_map3, play_map4, play_map5, play_map6, play_map7, play_map8, play_map9, play_map11_win]


initiale_game(play_map0)
game(all_play_map, play_map11_win, play_map0)





