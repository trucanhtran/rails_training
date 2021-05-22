require "test_helper"

class AjaxControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ajax_new_url
    assert_response :success
  end
end
