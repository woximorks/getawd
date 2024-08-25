class PortfolioCardsController < ApplicationController
  before_action :set_portfolio_card, only: %i[ show ]

  # GET /portfolio_cards/1 or /portfolio_cards/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_card
      @portfolio_card = PortfolioCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_card_params
      params.require(:portfolio_card).permit(:portfolio_card_title, :portfolio_card_description, :portfolio_card_image_url)
    end
end
