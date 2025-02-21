class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  
    # Filter by goal if goal_id is provided
    if params[:goal_id].present?
      @tasks = @tasks.where(goal_id: params[:goal_id])
    end
  
    # Apply filter only if `show_all` is not checked
    unless params[:show_all] == "true"
      if params[:on_hold] == "true" && params[:completed] == "true"
        @tasks = @tasks.where(status: %w[on_hold completed]) # Show both "on hold" and "completed"
      elsif params[:on_hold] == "true"
        @tasks = @tasks.where(status: "on_hold") # Only "on hold" tasks
      elsif params[:completed] == "true"
        @tasks = @tasks.where(status: "completed") # Only "completed" tasks
      else
        @tasks = @tasks.where.not(status: %w[completed on_hold]) # Default: Exclude both
      end
    end
  
    # Sorting logic
    allowed_sort_columns = %w[task_name status priority due_date]
    if params[:sort].present? && allowed_sort_columns.include?(params[:sort])
      @tasks = @tasks.order(params[:sort])
    end
  
    # Search filter
    if params[:search].present?
      @tasks = @tasks.where("task_name ILIKE ?", "%#{params[:search]}%")
    end
  
    # Pagination (manual, 10 tasks per page)
    @page = (params[:page] || 1).to_i
    @per_page = 10
    @total_pages = (@tasks.count / @per_page.to_f).ceil
    @tasks = @tasks.offset((@page - 1) * @per_page).limit(@per_page)
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
    params.require(:task).permit(:task_name, :description, :status, :priority, :start_date, :due_date, :completion_date, :assigned_to, :estimated_time, :actual_time, :goal_id)
  end
  

end