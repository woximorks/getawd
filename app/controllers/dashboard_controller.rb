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

    @due_today_tasks_not_started = Task.not_started.where(due_date: Time.zone.today).count
    @due_today_goals_not_started = Goal.not_started.where(due_date: Time.zone.today).count
    @due_today_tasks_in_progress = Task.in_progress.where(due_date: Time.zone.today).count
    @due_today_goals_in_progress = Goal.in_progress.where(due_date: Time.zone.today).count
    @due_today_tasks_on_hold = Task.on_hold.where(due_date: Time.zone.today).count
    @due_today_goals_on_hold = Goal.on_hold.where(due_date: Time.zone.today).count
    @due_today_tasks_completed = Task.completed.where(due_date: Time.zone.today).count
    @due_today_goals_completed = Goal.completed.where(due_date: Time.zone.today).count

    remaining_tasks_today = Task.where.not(status: :completed)
                      .where(due_date: Time.zone.today.all_day)

    @total_estimated_minutes_today = remaining_tasks_today.sum(:estimated_time).to_i
    @total_actual_minutes_today = remaining_tasks_today.sum(:actual_time).to_i
    @time_remaining_minutes_today = @total_estimated_minutes_today - @total_actual_minutes_today
    
    @ideas = Idea.includes(goals: :tasks).map do |idea|
      emoji = IDEAS[idea.title] || "❓"

      recent_task = idea.goals.flat_map(&:tasks)
                        .select { |t| t.completion_date.present? }
                        .max_by(&:completion_date)

      days_ago = recent_task ? (Time.zone.today - recent_task.completion_date.to_date).to_i : nil

      color = case days_ago
              when nil then 'gray'
              when 0 then 'green'
              when 1..2 then 'yellow'
              when 3..6 then 'red'
              else 'black'
              end

      { emoji: emoji, color: color }
    end
  end
end
