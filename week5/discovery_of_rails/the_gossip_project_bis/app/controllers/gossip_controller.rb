class GossipController < ApplicationController
  
  def index
  end

  def new
    @gossip_new = Gossip.new
  end

  def create
    
    # @gossip_new = Gossip.new(:title => params[:title], :content => params[:content])

    # if @gossip_new.save
    # redirect_to gossip_index_path
    # else
    # render 'new'
    @gossip_new = Gossip.new(:title => params[:title], :content => params[:content])

    if @gossip_new.save
    redirect_to root_path
    else
    render 'new'
    end
   
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user_id = @gossip.user_id
    @user = User.find(@user_id)
    @city_id = @user.city_id
    @city = City.find(@city_id)
  end 

private

  def post_params
    params.require(:post).permit(:title, :content)
  end


end
