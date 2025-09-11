class VideosController < ApplicationController
  def index
    @videos = Video.order(created_at: :desc)
  end

  def show
    @video = Video.find(params[:id])
  end
end