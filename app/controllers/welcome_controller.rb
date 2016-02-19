class WelcomeController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @news = []
    @counter = 0
    until (@counter < 2) do 
      @news.push(@articles[@counter])
      @counter += 1
    end
    
  end
end
