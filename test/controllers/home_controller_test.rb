require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get landing" do
    get home_landing_url
    assert_response :success
  end

  test "should get infor" do
    get home_infor_url
    assert_response :success
  end

end
