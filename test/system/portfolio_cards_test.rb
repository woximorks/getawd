require "application_system_test_case"

class PortfolioCardsTest < ApplicationSystemTestCase
  setup do
    @portfolio_card = portfolio_cards(:one)
  end

  test "visiting the index" do
    visit portfolio_cards_url
    assert_selector "h1", text: "Portfolio cards"
  end

  test "should create portfolio card" do
    visit portfolio_cards_url
    click_on "New portfolio card"

    fill_in "Portfolio card description", with: @portfolio_card.portfolio_card_description
    fill_in "Portfolio card image url", with: @portfolio_card.portfolio_card_image_url
    fill_in "Portfolio card title", with: @portfolio_card.portfolio_card_title
    click_on "Create Portfolio card"

    assert_text "Portfolio card was successfully created"
    click_on "Back"
  end

  test "should update Portfolio card" do
    visit portfolio_card_url(@portfolio_card)
    click_on "Edit this portfolio card", match: :first

    fill_in "Portfolio card description", with: @portfolio_card.portfolio_card_description
    fill_in "Portfolio card image url", with: @portfolio_card.portfolio_card_image_url
    fill_in "Portfolio card title", with: @portfolio_card.portfolio_card_title
    click_on "Update Portfolio card"

    assert_text "Portfolio card was successfully updated"
    click_on "Back"
  end

  test "should destroy Portfolio card" do
    visit portfolio_card_url(@portfolio_card)
    click_on "Destroy this portfolio card", match: :first

    assert_text "Portfolio card was successfully destroyed"
  end
end
