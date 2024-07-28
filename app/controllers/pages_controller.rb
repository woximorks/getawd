class PagesController < ApplicationController
  def home
    @site_vars = SiteVar.all
    @portfolio_cards = PortfolioCard.all
    @articles = Article.all
  end

  def blog
    @articles = Article.all
  end

  def portfolio
    @portfolio_cards = PortfolioCard.all
  end
end
