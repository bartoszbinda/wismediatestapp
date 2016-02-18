class ManageusersController < ApplicationController
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
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "welcome#index"
    
  end
end
