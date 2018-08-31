require 'test_helper'

class SelectItemControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get select_item_show_url
    assert_response :success
  end

end
