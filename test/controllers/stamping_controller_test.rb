require "test_helper"

class StampingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stamping_new_url
    assert_response :success
  end
end
