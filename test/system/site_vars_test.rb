require "application_system_test_case"

class SiteVarsTest < ApplicationSystemTestCase
  setup do
    @site_var = site_vars(:one)
  end

  test "visiting the index" do
    visit site_vars_url
    assert_selector "h1", text: "Site vars"
  end

  test "should create site var" do
    visit site_vars_url
    click_on "New site var"

    fill_in "Site var disclaimer1", with: @site_var.site_var_disclaimer1
    fill_in "Site var heading1", with: @site_var.site_var_heading1
    fill_in "Site var heading2", with: @site_var.site_var_heading2
    fill_in "Site var heading3", with: @site_var.site_var_heading3
    fill_in "Site var heading4", with: @site_var.site_var_heading4
    fill_in "Site var heading5", with: @site_var.site_var_heading5
    click_on "Create Site var"

    assert_text "Site var was successfully created"
    click_on "Back"
  end

  test "should update Site var" do
    visit site_var_url(@site_var)
    click_on "Edit this site var", match: :first

    fill_in "Site var disclaimer1", with: @site_var.site_var_disclaimer1
    fill_in "Site var heading1", with: @site_var.site_var_heading1
    fill_in "Site var heading2", with: @site_var.site_var_heading2
    fill_in "Site var heading3", with: @site_var.site_var_heading3
    fill_in "Site var heading4", with: @site_var.site_var_heading4
    fill_in "Site var heading5", with: @site_var.site_var_heading5
    click_on "Update Site var"

    assert_text "Site var was successfully updated"
    click_on "Back"
  end

  test "should destroy Site var" do
    visit site_var_url(@site_var)
    click_on "Destroy this site var", match: :first

    assert_text "Site var was successfully destroyed"
  end
end
