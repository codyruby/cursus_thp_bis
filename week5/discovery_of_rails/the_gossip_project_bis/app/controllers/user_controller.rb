class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @city_id = @user.city_id
    @city = City.find(@city_id)
  end
end
