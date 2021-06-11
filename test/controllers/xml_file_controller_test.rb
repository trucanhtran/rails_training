require "test_helper"

class XmlFileControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get xml_file_create_url
    assert_response :success
  end
end
