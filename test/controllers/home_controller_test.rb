require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get livingroom_light" do
    get home_livingroom_light_url
    assert_response :success
  end

  test "should get bedroom_light" do
    get home_bedroom_light_url
    assert_response :success
  end

  test "should get bedroom_ac" do
    get home_bedroom_ac_url
    assert_response :success
  end

end
