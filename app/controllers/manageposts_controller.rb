class ManagepostsController < ApplicationController
  before_action :authenticate_user!
  def index
  @articles = Article.all
  end
end