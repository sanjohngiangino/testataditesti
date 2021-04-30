require "test_helper"

class CanzonesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get canzones_new_url
    assert_response :success
  end

  test "should get create" do
    get canzones_create_url
    assert_response :success
  end

  test "should get destroy" do
    get canzones_destroy_url
    assert_response :success
  end
end
