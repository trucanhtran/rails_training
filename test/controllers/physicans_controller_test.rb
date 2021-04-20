require "test_helper"

class PhysicansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physican = physicans(:one)
  end

  test "should get index" do
    get physicans_url
    assert_response :success
  end

  test "should get new" do
    get new_physican_url
    assert_response :success
  end

  test "should create physican" do
    assert_difference('Physican.count') do
      post physicans_url, params: { physican: { age: @physican.age, name: @physican.name } }
    end

    assert_redirected_to physican_url(Physican.last)
  end

  test "should show physican" do
    get physican_url(@physican)
    assert_response :success
  end

  test "should get edit" do
    get edit_physican_url(@physican)
    assert_response :success
  end

  test "should update physican" do
    patch physican_url(@physican), params: { physican: { age: @physican.age, name: @physican.name } }
    assert_redirected_to physican_url(@physican)
  end

  test "should destroy physican" do
    assert_difference('Physican.count', -1) do
      delete physican_url(@physican)
    end

    assert_redirected_to physicans_url
  end
end
