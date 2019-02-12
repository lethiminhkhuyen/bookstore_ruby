require 'test_helper'

class LayoutControllerTest < ActionDispatch::IntegrationTest
  test "should get header" do
    get layout_header_url
    assert_response :success
  end

  test "should get footer" do
    get layout_footer_url
    assert_response :success
  end

end
