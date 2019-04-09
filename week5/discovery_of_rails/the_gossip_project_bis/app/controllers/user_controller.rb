class UserController < ApplicationController
  
  # Méthode qui permet d'afficher un user en particulier et ça city
  def show
    @user = User.find(params[:id])
    @city_id = @user.city_id
    @city = City.find(@city_id)
  end
  
end
