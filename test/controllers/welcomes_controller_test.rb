require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get welcomes_landing_url
    assert_response :success
  end

end
