require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
  
  test "should not be blank" do
    @article = Article.new
    @article.title = ""
    assert_not article.valid?
  end
end
