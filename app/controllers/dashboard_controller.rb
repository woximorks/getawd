# app/controllers/dashboard_controller.rb
class DashboardController < ApplicationController
  def index
    @goals = Goal.includes(:tasks)
  end
end