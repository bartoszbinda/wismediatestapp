class WelcomeController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    
    @counter = 0
    
    
  end
end
