require "test_helper"

class LyricsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lyrics_new_url
    assert_response :success
  end

  test "should get create" do
    get lyrics_create_url
    assert_response :success
  end

  test "should get destroy" do
    get lyrics_destroy_url
    assert_response :success
  end
end
