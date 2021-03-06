require "test_helper"

class ProductItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_item_index_url
    assert_response :success
  end

  test "should get show" do
    get product_item_show_url
    assert_response :success
  end

  test "should get edit" do
    get product_item_edit_url
    assert_response :success
  end

  test "should get new" do
    get product_item_new_url
    assert_response :success
  end
end
