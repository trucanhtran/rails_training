require "test_helper"

class IntroductionControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get introduction_show_url
    assert_response :success
  end
end
