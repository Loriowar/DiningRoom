require 'test_helper'

class DishMixturesControllerTest < ActionController::TestCase
  setup do
    @dish_mixture = dish_mixtures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dish_mixtures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish_mixture" do
    assert_difference('DishMixture.count') do
      post :create, dish_mixture: {  }
    end

    assert_redirected_to dish_mixture_path(assigns(:dish_mixture))
  end

  test "should show dish_mixture" do
    get :show, id: @dish_mixture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish_mixture
    assert_response :success
  end

  test "should update dish_mixture" do
    patch :update, id: @dish_mixture, dish_mixture: {  }
    assert_redirected_to dish_mixture_path(assigns(:dish_mixture))
  end

  test "should destroy dish_mixture" do
    assert_difference('DishMixture.count', -1) do
      delete :destroy, id: @dish_mixture
    end

    assert_redirected_to dish_mixtures_path
  end
end
