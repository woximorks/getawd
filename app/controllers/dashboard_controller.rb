class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @goals = Goal.includes(:tasks)
  end
end