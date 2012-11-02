require 'test_helper'

class BaseControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get user_guide" do
    get :user_guide
    assert_response :success
  end

end
