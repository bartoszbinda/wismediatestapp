class ManageusersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @user = current_user
  end
  def updateAdminStatus
    @user = User.find(params[:id])
    @user.isAdmin=!@user.isAdmin
    if @user.save
     redirect_to manageusers_path
    end
  end
  def setIsBanned
    @user = User.find(params[:id])
    @user.isBanned=!@user.isBanned
    if @user.save
     redirect_to manageusers_path
    end
  end
 
end
