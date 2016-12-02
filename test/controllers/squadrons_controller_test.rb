require 'test_helper'

class SquadronsControllerTest < ActionController::TestCase
  setup do
    @squadron = squadrons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squadrons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squadron" do
    assert_difference('Squadron.count') do
      post :create, squadron: { aircraft: @squadron.aircraft, name: @squadron.name }
    end

    assert_redirected_to squadron_path(assigns(:squadron))
  end

  test "should show squadron" do
    get :show, id: @squadron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squadron
    assert_response :success
  end

  test "should update squadron" do
    patch :update, id: @squadron, squadron: { aircraft: @squadron.aircraft, name: @squadron.name }
    assert_redirected_to squadron_path(assigns(:squadron))
  end
end
