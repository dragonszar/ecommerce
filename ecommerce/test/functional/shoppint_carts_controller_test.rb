require 'test_helper'

class ShoppintCartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppint_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoppint_cart" do
    assert_difference('ShoppintCart.count') do
      post :create, :shoppint_cart => { }
    end

    assert_redirected_to shoppint_cart_path(assigns(:shoppint_cart))
  end

  test "should show shoppint_cart" do
    get :show, :id => shoppint_carts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => shoppint_carts(:one).to_param
    assert_response :success
  end

  test "should update shoppint_cart" do
    put :update, :id => shoppint_carts(:one).to_param, :shoppint_cart => { }
    assert_redirected_to shoppint_cart_path(assigns(:shoppint_cart))
  end

  test "should destroy shoppint_cart" do
    assert_difference('ShoppintCart.count', -1) do
      delete :destroy, :id => shoppint_carts(:one).to_param
    end

    assert_redirected_to shoppint_carts_path
  end
end
