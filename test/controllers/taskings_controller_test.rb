require 'test_helper'

class TaskingsControllerTest < ActionController::TestCase
  setup do
    @tasking = taskings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasking" do
    assert_difference('Tasking.count') do
      post :create, tasking: { airframe_type_id: @tasking.airframe_type_id, alternate_base_id: @tasking.alternate_base_id, callsign: @tasking.callsign, channel: @tasking.channel, mission_id: @tasking.mission_id, notes: @tasking.notes, number: @tasking.number, primary_base_id: @tasking.primary_base_id, tasking_type: @tasking.tasking_type }
    end

    assert_redirected_to tasking_path(assigns(:tasking))
  end

  test "should show tasking" do
    get :show, id: @tasking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasking
    assert_response :success
  end

  test "should update tasking" do
    patch :update, id: @tasking, tasking: { airframe_type_id: @tasking.airframe_type_id, alternate_base_id: @tasking.alternate_base_id, callsign: @tasking.callsign, channel: @tasking.channel, mission_id: @tasking.mission_id, notes: @tasking.notes, number: @tasking.number, primary_base_id: @tasking.primary_base_id, tasking_type: @tasking.tasking_type }
    assert_redirected_to tasking_path(assigns(:tasking))
  end

  test "should destroy tasking" do
    assert_difference('Tasking.count', -1) do
      delete :destroy, id: @tasking
    end

    assert_redirected_to taskings_path
  end
end
