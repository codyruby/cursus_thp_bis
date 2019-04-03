require 'controller'

class Router

  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "\nBIENVENUE DANS THE GOSSIP PROJECT"
    while true

      #on affiche le menu
      puts "\nTu veux faire quoi BG ?\n"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux afficher tous les gossips"
      puts "3. Je veux supprimer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "\nTu as choisi de créer un gossip\n" 
        @controller.create_gossip
      when 2
        puts "\nVoici les gossips :\n"
        @controller.index_gossips
      when 3 
        puts "\n Voici la liste de tes gossips :"
        @controller.index_gossips
        puts "\n Lequel veux-tu supprimer ?"
        delete_gossip = gets.chomp
        @controller.delete(delete_gossip)
      when 4
        puts "\nÀ bientôt !\n"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "\nCe choix n'existe pas, merci de ressayer\n" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end