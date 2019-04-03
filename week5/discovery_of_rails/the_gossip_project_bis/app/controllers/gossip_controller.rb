class GossipController < ApplicationController
  
  def show_gossip
    @gossip = Gossip.find(params[:id])
  end 

  def new
  end

  def create
  end
  
end
