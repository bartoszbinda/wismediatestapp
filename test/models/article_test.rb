require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
   
  test "should not be blank" do
    article = Article.new
    assert_not article.valid?
  end
  test 'title should not be nil' do
    article = Article.new
    article.title = ""
    assert_not article.valid?
  end
end
