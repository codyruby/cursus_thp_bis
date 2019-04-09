class GossipController < ApplicationController
  
  def index
  end

  # Méthode qui permet d'afficher les gossips, users et cities
  def show
    @gossip = Gossip.find(params[:id])
    @user_id = @gossip.user_id
    @user = User.find(@user_id)
    @city_id = @user.city_id
    @city = City.find(@city_id)
  end 

  # Méthode qui permet de créer un nouveau gossip
  def new
    @gossip_new = Gossip.new
  end

  # Méthode qui permet de créer un nouveau gossip avec les params récupéré dans le formulaire de la vue new de gossip
  def create
    @gossip_new = Gossip.new(:title => params[:title], :content => params[:content])
    if @gossip_new.save
    redirect_to root_path
    else
    render 'new'
    end
  end

  # Méthode qui permet d'éditer un gossip trouvé par son id
  def edit
    @gossip = Gossip.find(params[:id])
  end
  
  # Méthode qui permet la mise à jour d'un nouveau gossip avec les params récupéré dans le formulaire de la vue edit de gossip
  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(:title => params[:title], :content => params[:content])
      redirect_to root_path
    else
      render :edit
    end
  end

  # Méthode qui permet de supprimer le gossip 
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
end


private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
