class BlogPostsController < ApplicationController
  def index
    @featured_blog_posts = BlogPost.limit(3) # Adjust as necessary for your featured logic
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
end
