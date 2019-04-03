class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :value
    
    def initialize

      #TO DO : doit régler son nom et sa valeur
      # J'assigne les valeurs (X et O)
      @value_player1 = "X"
      @value_player2 = "O"
      # Je récupère le noms des joueurs 1 et 2
      puts "JOUEUR 1 => Choisi ton nom :"
      @name_player1 = gets.chomp
      puts "JOUEUR 2 => Choisi ton nom :"
      @name_player2 = gets.chomp
      
      params = { name: @value_player1, value: @value_player2 }
    p params
      return params 
    end

end

