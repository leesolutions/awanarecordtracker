require 'test_helper'

class AwardCompletionsControllerTest < ActionController::TestCase
  setup do
    @award_completion = award_completions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:award_completions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create award_completion" do
    assert_difference('AwardCompletion.count') do
      post :create, award_completion: { date: @award_completion.date, no_help: @award_completion.no_help }
    end

    assert_redirected_to award_completion_path(assigns(:award_completion))
  end

  test "should show award_completion" do
    get :show, id: @award_completion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @award_completion
    assert_response :success
  end

  test "should update award_completion" do
    put :update, id: @award_completion, award_completion: { date: @award_completion.date, no_help: @award_completion.no_help }
    assert_redirected_to award_completion_path(assigns(:award_completion))
  end

  test "should destroy award_completion" do
    assert_difference('AwardCompletion.count', -1) do
      delete :destroy, id: @award_completion
    end

    assert_redirected_to award_completions_path
  end
end
