require 'test_helper'

class ArticleTest < ActionDispatch::IntegrationTest
  test "attach" do
    @article = Article.new
    @article.avatar.attach(io: fixture_file_upload("files/wave.png"), filename: 'wave.png')
    assert @article.save
  end
end
