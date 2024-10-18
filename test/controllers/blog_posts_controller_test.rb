require "test_helper"

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get blog_posts_show_url
    assert_response :success
  end
end
