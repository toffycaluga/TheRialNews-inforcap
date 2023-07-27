require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do 
    @article = articles(:first_article)
  end

  test "should get index" do

    get articles_url
    assert_response :success
    # assert_equal 200, response.status
    # assert_equal "text/html", response.media_type
    # assert_equal "utf-8", response.charset
    # assert_equal Article.all
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    sign_in users(:user_one)
    assert_difference("Article.count") do
      post articles_url, params: { article: { description: @article.description, title: @article.title, user: @article.user } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { description: @article.description, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
