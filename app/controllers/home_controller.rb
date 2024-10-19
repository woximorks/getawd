class HomeController < ApplicationController
  def index
    
    # Featured Projects
    @featured_projects = Project.where(featured: true)
    @featured_blog_posts = BlogPost.where(featured: true)
    @featured_videos = Video.where(featured: true)
    
    #
    
  end
end