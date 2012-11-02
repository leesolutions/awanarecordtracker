require 'test_helper'

class LeadersControllerTest < ActionController::TestCase
  setup do
    @leader = leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leader" do
    assert_difference('Leader.count') do
      post :create, leader: { email: @leader.email, first_name: @leader.first_name, last_name: @leader.last_name, phone: @leader.phone }
    end

    assert_redirected_to leader_path(assigns(:leader))
  end

  test "should show leader" do
    get :show, id: @leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leader
    assert_response :success
  end

  test "should update leader" do
    put :update, id: @leader, leader: { email: @leader.email, first_name: @leader.first_name, last_name: @leader.last_name, phone: @leader.phone }
    assert_redirected_to leader_path(assigns(:leader))
  end

  test "should destroy leader" do
    assert_difference('Leader.count', -1) do
      delete :destroy, id: @leader
    end

    assert_redirected_to leaders_path
  end
end
