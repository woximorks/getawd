class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @goals = Goal.all
    @tasks = Task.all
    @active_tasks = Task.where.not(status: :completed).order(due_date: :asc)
    @completed_tasks = Task.where(status: :completed).order(due_date: :asc)
  end
end