require "test_helper"

class CallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get spotify" do
    get callbacks_spotify_url
    assert_response :success
  end
end
