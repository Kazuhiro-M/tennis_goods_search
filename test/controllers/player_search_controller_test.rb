require 'test_helper'

class PlayerSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get player_search_show_url
    assert_response :success
  end

  test "should get search" do
    get player_search_search_url
    assert_response :success
  end

end
