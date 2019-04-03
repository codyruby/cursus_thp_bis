require 'gossip'
require 'view'

class Controller
    
    def initialize
        @view = View.new
    end

    def create_gossip
        @params = @view.create_gossip
        gossip = Gossip.new(@params[:author], @params[:content])
        gossip.save    
    end

    # Méthode qui récupère et affiche tous les gossips
    def index_gossips
        array_all_gossip = Gossip.all
        View.index_gossips(array_all_gossip)
    end

    # Méthode qui supprime un gossip
    def delete_gossip(gossip_to_delete)
        gossip_to_delete.delete
    end

    
  
end