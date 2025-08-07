class IdeasController < ApplicationController
  before_action :authenticate_user!

  def show
    @idea = Idea.includes(goals: :tasks).find(params[:id])
    @emoji = IDEAS[@idea.title] || "❓"
  end
end