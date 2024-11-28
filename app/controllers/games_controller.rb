class GamesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
