require "test_helper"

class SiteVarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_var = site_vars(:one)
  end

  test "should get index" do
    get site_vars_url
    assert_response :success
  end

  test "should get new" do
    get new_site_var_url
    assert_response :success
  end

  test "should create site_var" do
    assert_difference("SiteVar.count") do
      post site_vars_url, params: { site_var: { site_var_disclaimer1: @site_var.site_var_disclaimer1, site_var_heading1: @site_var.site_var_heading1, site_var_heading2: @site_var.site_var_heading2, site_var_heading3: @site_var.site_var_heading3, site_var_heading4: @site_var.site_var_heading4, site_var_heading5: @site_var.site_var_heading5 } }
    end

    assert_redirected_to site_var_url(SiteVar.last)
  end

  test "should show site_var" do
    get site_var_url(@site_var)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_var_url(@site_var)
    assert_response :success
  end

  test "should update site_var" do
    patch site_var_url(@site_var), params: { site_var: { site_var_disclaimer1: @site_var.site_var_disclaimer1, site_var_heading1: @site_var.site_var_heading1, site_var_heading2: @site_var.site_var_heading2, site_var_heading3: @site_var.site_var_heading3, site_var_heading4: @site_var.site_var_heading4, site_var_heading5: @site_var.site_var_heading5 } }
    assert_redirected_to site_var_url(@site_var)
  end

  test "should destroy site_var" do
    assert_difference("SiteVar.count", -1) do
      delete site_var_url(@site_var)
    end

    assert_redirected_to site_vars_url
  end
end
