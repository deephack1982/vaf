require 'test_helper'

class AirframesControllerTest < ActionController::TestCase
  setup do
    @airframe = airframes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airframes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airframe" do
    assert_difference('Airframe.count') do
      post :create, airframe: { airframe_type_id: @airframe.airframe_type_id, condition: @airframe.condition, hours: @airframe.hours, location: @airframe.location, squadron_id: @airframe.squadron_id, tail_number: @airframe.tail_number }
    end

    assert_redirected_to airframe_path(assigns(:airframe))
  end

  test "should show airframe" do
    get :show, id: @airframe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airframe
    assert_response :success
  end

  test "should update airframe" do
    patch :update, id: @airframe, airframe: { airframe_type_id: @airframe.airframe_type_id, condition: @airframe.condition, hours: @airframe.hours, location: @airframe.location, squadron_id: @airframe.squadron_id, tail_number: @airframe.tail_number }
    assert_redirected_to airframe_path(assigns(:airframe))
  end
end
