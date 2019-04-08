class CityController < ApplicationController

  def index
  end

  def show
    @city = City.find(params[:id])
    @cities = City.all 
    @users = User.all
    @gossips = Gossip.all
    @cities_users = @users.where(city_id: params[:id])
    @users_city_ids = @cities_users.ids
  end
  
end
