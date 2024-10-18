class HomeController < ApplicationController
  def index
    
    # Featured Projects
    @featured_projects = Project.limit(3) # Adjust as necessary for your featured logic
    @featured_blog_posts = BlogPost.limit(3) # Adjust as necessary for your featured logic
    @featured_videos = Video.limit(3) # Adjust as necessary for your featured logic
    
    #
    
  end
end