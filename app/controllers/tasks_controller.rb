class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  # Action to show a specific task
  def show
    @task = Task.find(params[:id])
  end
end
