class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
  scope = Task.all

  # existing filters (status, due date, goal_id, sort, search)…
  if params[:status].present? && Task.statuses.key?(params[:status])
    scope = scope.where(status: Task.statuses[params[:status]])
  end

  if params[:due].present?
    begin
      date = Time.zone.parse(params[:due]).to_date
      scope = scope.where(due_date: date)
    rescue ArgumentError
    end
  end

  scope = scope.where(goal_id: params[:goal_id]) if params[:goal_id].present?

  allowed_sort_columns = %w[task_name status priority due_date]
  if params[:sort].present? && allowed_sort_columns.include?(params[:sort])
    scope = scope.order(params[:sort])
  end

  scope = scope.where("task_name ILIKE ?", "%#{params[:search]}%") if params[:search].present?

  @tasks, @page, @total_pages = paginate(scope, per_page: 25)
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