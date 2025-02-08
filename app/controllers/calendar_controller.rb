class CalendarController < ApplicationController

  before_action :authenticate_user!

  def show
    @tasks = Task.where(due_date: Date.today.beginning_of_month..Date.today.end_of_month)
  end
end