class HomeController < ApplicationController
    
    def index          
        @gossips = Gossip.all 
        @users = User.all 
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to root_path
    end

end