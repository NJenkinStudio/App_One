require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @article = Article.create(title: "New Article", description: "This is a new article." )
    @user = User.create(username: "johndoe", email: "johndoe@example.com", password: "password")
  end

    test "should create article" do
      sign_in_as(@user)
      assert_difference('Article.count', 1) do
        post articles_url, params: {article: {
                                    title: "Some article", 
                                    description: "This is an article.", 
                                    } }
      end
      assert_redirected_to article_path(Article.last.id)
    end
end