class ProfilesController < ApplicationController
  def index
    #This set @users to every user in our database
    @users = User.all
  end

  def show
    #This ser @user to a user based on their id
    @user = User.find(params[:id])
  end
end
