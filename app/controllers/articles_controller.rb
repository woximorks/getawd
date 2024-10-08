class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end
end
