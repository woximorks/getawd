class HomeController < ApplicationController
  def index
    
    @featured_projects = Project.where(featured: true)
    @featured_blog_posts = BlogPost.where(featured: true)
    @featured_videos = Video.where(featured: true).order(created_at: :desc)
    
  end
end