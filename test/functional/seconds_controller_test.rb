require 'test_helper'

class SecondsControllerTest < ActionController::TestCase
  setup do
    @second = seconds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seconds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second" do
    assert_difference('Second.count') do
      post :create, :second => @second.attributes
    end

    assert_redirected_to second_path(assigns(:second))
  end

  test "should show second" do
    get :show, :id => @second.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @second.to_param
    assert_response :success
  end

  test "should update second" do
    put :update, :id => @second.to_param, :second => @second.attributes
    assert_redirected_to second_path(assigns(:second))
  end

  test "should destroy second" do
    assert_difference('Second.count', -1) do
      delete :destroy, :id => @second.to_param
    end

    assert_redirected_to seconds_path
  end
end
