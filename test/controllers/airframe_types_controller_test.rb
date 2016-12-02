require 'test_helper'

class AirframeTypesControllerTest < ActionController::TestCase
  setup do
    @airframe_type = airframe_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airframe_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airframe_type" do
    assert_difference('AirframeType.count') do
      post :create, airframe_type: { callsign: @airframe_type.callsign, category: @airframe_type.category, cost: @airframe_type.cost, maintenance_hours: @airframe_type.maintenance_hours, name: @airframe_type.name }
    end

    assert_redirected_to airframe_type_path(assigns(:airframe_type))
  end

  test "should show airframe_type" do
    get :show, id: @airframe_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airframe_type
    assert_response :success
  end

  test "should update airframe_type" do
    patch :update, id: @airframe_type, airframe_type: { callsign: @airframe_type.callsign, category: @airframe_type.category, cost: @airframe_type.cost, maintenance_hours: @airframe_type.maintenance_hours, name: @airframe_type.name }
    assert_redirected_to airframe_type_path(assigns(:airframe_type))
  end
end
