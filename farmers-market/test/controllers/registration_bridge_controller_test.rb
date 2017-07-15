require 'test_helper'

class RegistrationBridgeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registration_bridge_index_url
    assert_response :success
  end

end
