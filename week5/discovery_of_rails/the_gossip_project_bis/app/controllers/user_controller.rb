class UserController < ApplicationController
  def show_user
    @user = User.find(params[:id])
  end
end
