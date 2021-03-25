require "test_helper"

class RulersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruler = rulers(:one)
  end

  test "should get index" do
    get rulers_url
    assert_response :success
  end

  test "should get new" do
    get new_ruler_url
    assert_response :success
  end

  test "should create ruler" do
    assert_difference('Ruler.count') do
      post rulers_url, params: { ruler: { color: @ruler.color, lenght: @ruler.lenght, name: @ruler.name } }
    end

    assert_redirected_to ruler_url(Ruler.last)
  end

  test "should show ruler" do
    get ruler_url(@ruler)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruler_url(@ruler)
    assert_response :success
  end

  test "should update ruler" do
    patch ruler_url(@ruler), params: { ruler: { color: @ruler.color, lenght: @ruler.lenght, name: @ruler.name } }
    assert_redirected_to ruler_url(@ruler)
  end

  test "should destroy ruler" do
    assert_difference('Ruler.count', -1) do
      delete ruler_url(@ruler)
    end

    assert_redirected_to rulers_url
  end
end
