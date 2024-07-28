class PortfolioCardsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_portfolio_card, only: %i[ show edit update destroy ]

  # GET /portfolio_cards or /portfolio_cards.json
  def index
    @portfolio_cards = PortfolioCard.all
  end

  # GET /portfolio_cards/1 or /portfolio_cards/1.json
  def show
  end

  # GET /portfolio_cards/new
  def new
    @portfolio_card = PortfolioCard.new
  end

  # GET /portfolio_cards/1/edit
  def edit
  end

  # POST /portfolio_cards or /portfolio_cards.json
  def create
    @portfolio_card = PortfolioCard.new(portfolio_card_params)

    respond_to do |format|
      if @portfolio_card.save
        format.html { redirect_to portfolio_card_url(@portfolio_card), notice: "Portfolio card was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_cards/1 or /portfolio_cards/1.json
  def update
    respond_to do |format|
      if @portfolio_card.update(portfolio_card_params)
        format.html { redirect_to portfolio_card_url(@portfolio_card), notice: "Portfolio card was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_cards/1 or /portfolio_cards/1.json
  def destroy
    @portfolio_card.destroy!

    respond_to do |format|
      format.html { redirect_to portfolio_cards_url, notice: "Portfolio card was successfully destroyed." }
      format.json { head :no_content }
    end
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
