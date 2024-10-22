require "test_helper"

class AutomakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automaker = automakers(:one)
  end

  test "should get index" do
    get automakers_url
    assert_response :success
  end

  test "should get new" do
    get new_automaker_url
    assert_response :success
  end

  test "should create automaker" do
    assert_difference("Automaker.count") do
      post automakers_url, params: { automaker: { country: @automaker.country, fundation_year: @automaker.fundation_year, name: @automaker.name } }
    end

    assert_redirected_to automaker_url(Automaker.last)
  end

  test "should show automaker" do
    get automaker_url(@automaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_automaker_url(@automaker)
    assert_response :success
  end

  test "should update automaker" do
    patch automaker_url(@automaker), params: { automaker: { country: @automaker.country, fundation_year: @automaker.fundation_year, name: @automaker.name } }
    assert_redirected_to automaker_url(@automaker)
  end

  test "should destroy automaker" do
    assert_difference("Automaker.count", -1) do
      delete automaker_url(@automaker)
    end

    assert_redirected_to automakers_url
  end
end
