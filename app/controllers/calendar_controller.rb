class CalendarController < ApplicationController

  before_action :authenticate_user!

  def show
    @tasks = Task.all
    @this_months_tasks = Task.where(due_date: Time.zone.today.beginning_of_month..Time.zone.today.end_of_month)
  end
end