class GossipController < ApplicationController
  
  def index
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user_id = @gossip.user_id
    @user = User.find(@user_id)
    @city_id = @user.city_id
    @city = City.find(@city_id)
  end 

  def new
    @gossip_new = Gossip.new
  end

  def create
    @gossip_new = Gossip.new(:title => params[:title], :content => params[:content])
    if @gossip_new.save
    redirect_to root_path
    else
    render 'new'
    end
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(:title => params[:title], :content => params[:content])
      redirect_to root_path
    else
      render :edit
    end
  end


private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
