class VideosController < ApplicationController
  def index
    @featured_videos = Video.limit(3) # Adjust as necessary for your featured logic
    @videos = Video.all
  end

  def show
    @featured_video = Video.find(params[:id])
  end
end
