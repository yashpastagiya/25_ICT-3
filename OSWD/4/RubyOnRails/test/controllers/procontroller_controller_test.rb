require 'test_helper'

class ProcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get procontroller_index_url
    assert_response :success
  end

end
