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
    if params[:keyword].present?
      @search_performed = true
      @results = PortfolioCard.search(params[:keyword])
    else
      @search_performed = false
      @portfolio_cards = PortfolioCard.all
    end
  end
  
  def videos
    @video_cards = VideoCard.all
  end

  def articles
    @articles = Article.all
  end
end
