class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
    @goals = Goal.all

    @not_started_goals = Goal.where(status: :not_started).order(:due_date)
    @in_progress_goals = Goal.where(status: :in_progress).order(:due_date)
    @on_hold_goals     = Goal.where(status: :on_hold).order(:due_date)
    @completed_goals   = Goal.where(status: :completed).order(:due_date)

    @not_started_tasks = Task.where(status: :not_started).order(:due_date)
    @in_progress_tasks = Task.where(status: :in_progress).order(:due_date)
    @on_hold_tasks     = Task.where(status: :on_hold).order(:due_date)
    @completed_tasks   = Task.where(status: :completed).order(:due_date)
    
    @goal_counts = {
    not_started: Goal.not_started.count,
    in_progress: Goal.in_progress.count,
    on_hold:     Goal.on_hold.count,
    completed:   Goal.completed.count
    }

    @task_counts = {
      not_started: Task.not_started.count,
      in_progress: Task.in_progress.count,
      on_hold:     Task.on_hold.count,
      completed:   Task.completed.count
    }

    @due_today_tasks = Task.not_started.where(due_date: Date.today).count
    @due_today_goals = Goal.not_started.where(due_date: Date.today).count

  end
end
