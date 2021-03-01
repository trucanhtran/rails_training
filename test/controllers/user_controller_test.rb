require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get user_test_url
    assert_response :success
  end

  test "should get contact" do
    get user_contact_url
    assert_response :success
  end

  test "should get profile" do
    get user_profile_url
    assert_response :success
  end
end
