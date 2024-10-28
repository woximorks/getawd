class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  
    # Apply filter only if `show_all` is not checked
    unless params[:show_all] == "true"
      if params[:on_hold] == "true" && params[:completed] == "true"
        # Show tasks that are either "on hold" or "completed"
        @tasks = @tasks.where(status: %w[on_hold completed])
      elsif params[:on_hold] == "true"
        # Show only "on hold" tasks
        @tasks = @tasks.where(status: "on_hold")
      elsif params[:completed] == "true"
        # Show only "completed" tasks
        @tasks = @tasks.where(status: "completed")
      else
        # Default view excludes "on hold" and "completed" if no filters are selected
        @tasks = @tasks.where.not(status: %w[completed on_hold])
      end
    end
  
    # Apply sorting if a sort parameter is present
    if params[:sort].present?
      @tasks = @tasks.order(params[:sort])
    end
  
    # Apply search filter if a search parameter is present
    if params[:search].present?
      @tasks = @tasks.where("task_name ILIKE ?", "%#{params[:search]}%")
    end
  end
  

  # Action to show a specific task
  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
  
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
  
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully deleted.'
  end
  private

  def task_params
    params.require(:task).permit(:task_name, :description, :status, :priority, :start_date, :due_date, :completion_date, :assigned_to, :estimated_time, :actual_time)
  end

end