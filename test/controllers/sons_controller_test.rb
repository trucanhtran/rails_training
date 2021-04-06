require "test_helper"

class SonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @son = sons(:one)
  end

  test "should get index" do
    get sons_url
    assert_response :success
  end

  test "should get new" do
    get new_son_url
    assert_response :success
  end

  test "should create son" do
    assert_difference('Son.count') do
      post sons_url, params: { son: { address: @son.address, age: @son.age, name: @son.name, phone: @son.phone } }
    end

    assert_redirected_to son_url(Son.last)
  end

  test "should show son" do
    get son_url(@son)
    assert_response :success
  end

  test "should get edit" do
    get edit_son_url(@son)
    assert_response :success
  end

  test "should update son" do
    patch son_url(@son), params: { son: { address: @son.address, age: @son.age, name: @son.name, phone: @son.phone } }
    assert_redirected_to son_url(@son)
  end

  test "should destroy son" do
    assert_difference('Son.count', -1) do
      delete son_url(@son)
    end

    assert_redirected_to sons_url
  end
end
