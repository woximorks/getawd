class PagesController < ApplicationController
  def home
    @portfolio_cards = PortfolioCard.all
    @articles = Article.all
  end

  def blog
    @articles = Article.all
  end

  def portfolio
    @portfolio_cards = PortfolioCard.all
  end
  
  def videos
    @video_cards = VideoCard.all
  end
end