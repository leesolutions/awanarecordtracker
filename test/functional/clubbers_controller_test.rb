require 'test_helper'

class ClubbersControllerTest < ActionController::TestCase
  setup do
    @clubber = clubbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clubber" do
    assert_difference('Clubber.count') do
      post :create, clubber: { address: @clubber.address, birth_date: @clubber.birth_date, city: @clubber.city, email: @clubber.email, first_name: @clubber.first_name, last_name: @clubber.last_name, parents: @clubber.parents, phone: @clubber.phone, zip: @clubber.zip }
    end

    assert_redirected_to clubber_path(assigns(:clubber))
  end

  test "should show clubber" do
    get :show, id: @clubber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clubber
    assert_response :success
  end

  test "should update clubber" do
    put :update, id: @clubber, clubber: { address: @clubber.address, birth_date: @clubber.birth_date, city: @clubber.city, email: @clubber.email, first_name: @clubber.first_name, last_name: @clubber.last_name, parents: @clubber.parents, phone: @clubber.phone, zip: @clubber.zip }
    assert_redirected_to clubber_path(assigns(:clubber))
  end

  test "should destroy clubber" do
    assert_difference('Clubber.count', -1) do
      delete :destroy, id: @clubber
    end

    assert_redirected_to clubbers_path
  end
end
