require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landingPage" do
    get pages_landingPage_url
    assert_response :success
  end

end
