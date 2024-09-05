class PagesController < ApplicationController
  def home
    @portfolio_cards = PortfolioCard.all
    @articles = Article.all
    @portfolio_cards = PortfolioCard.all
  end

  def blog
    @articles = Article.all
  end

  def portfolio
    @portfolio_cards = PortfolioCard.all
    if params[:keyword].present?
      @results = @portfolio_cards.search(params[:keyword])
      Rails.logger.debug "Search results: #{@results.inspect}"
    else
      @results = []
    end
  end
  
  def videos
    @video_cards = VideoCard.all
  end
end