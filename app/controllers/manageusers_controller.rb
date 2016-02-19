class ManageusersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end
  def updateAdminStatus
    @user = User.find(params[:id])
    @user.isAdmin=!@user.isAdmin
    if @user.save
     redirect_to manageusers_path
    end
  end
 
end
