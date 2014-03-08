require 'test_helper'

class AvailableFoodstuffsControllerTest < ActionController::TestCase
  setup do
    @available_foodstuff = available_foodstuff(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_foodstuff)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_foodstuff" do
    assert_difference('AvailableFoodstuff.count') do
      post :create, available_foodstuff: {  }
    end

    assert_redirected_to available_foodstuff_path(assigns(:available_foodstuff))
  end

  test "should show available_foodstuff" do
    get :show, id: @available_foodstuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_foodstuff
    assert_response :success
  end

  test "should update available_foodstuff" do
    patch :update, id: @available_foodstuff, available_foodstuff: {  }
    assert_redirected_to available_foodstuff_path(assigns(:available_foodstuff))
  end

  test "should destroy available_foodstuff" do
    assert_difference('AvailableFoodstuff.count', -1) do
      delete :destroy, id: @available_foodstuff
    end

    assert_redirected_to available_foodstuff_path
  end
end
