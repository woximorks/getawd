require "test_helper"

class PortfolioCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio_card = portfolio_cards(:one)
  end

  test "should get index" do
    get portfolio_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_card_url
    assert_response :success
  end

  test "should create portfolio_card" do
    assert_difference("PortfolioCard.count") do
      post portfolio_cards_url, params: { portfolio_card: { portfolio_card_description: @portfolio_card.portfolio_card_description, portfolio_card_image_url: @portfolio_card.portfolio_card_image_url, portfolio_card_title: @portfolio_card.portfolio_card_title } }
    end

    assert_redirected_to portfolio_card_url(PortfolioCard.last)
  end

  test "should show portfolio_card" do
    get portfolio_card_url(@portfolio_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_card_url(@portfolio_card)
    assert_response :success
  end

  test "should update portfolio_card" do
    patch portfolio_card_url(@portfolio_card), params: { portfolio_card: { portfolio_card_description: @portfolio_card.portfolio_card_description, portfolio_card_image_url: @portfolio_card.portfolio_card_image_url, portfolio_card_title: @portfolio_card.portfolio_card_title } }
    assert_redirected_to portfolio_card_url(@portfolio_card)
  end

  test "should destroy portfolio_card" do
    assert_difference("PortfolioCard.count", -1) do
      delete portfolio_card_url(@portfolio_card)
    end

    assert_redirected_to portfolio_cards_url
  end
end
