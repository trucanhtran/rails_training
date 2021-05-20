require "test_helper"

class AjaxControllerTest < ActionDispatch::IntegrationTest
  test "should get get_data" do
    get ajax_get_data_url
    assert_response :success
  end
end
