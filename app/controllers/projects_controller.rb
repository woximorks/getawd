class ProjectsController < ApplicationController
  def index
    @featured_projects = Project.limit(3) # Adjust as necessary for your featured logic
    @projects = Project.all
  end

  def show
    @featured_project = Project.find(params[:id])
  end
end
