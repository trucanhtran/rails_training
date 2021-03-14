require "test_helper"

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_index_url
    assert_response :success
  end

  test "should get new" do
    get shop_new_url
    assert_response :success
  end

  test "should get show" do
    get shop_show_url
    assert_response :success
  end

  test "should get edit" do
    get shop_edit_url
    assert_response :success
  end
end
