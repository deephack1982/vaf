require 'test_helper'

class MissionsControllerTest < ActionController::TestCase
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission" do
    assert_difference('Mission.count') do
      post :create, mission: { body: @mission.body, channel: @mission.channel, date: @mission.date, start_time: @mission.start_time, title: @mission.title }
    end

    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should show mission" do
    get :show, id: @mission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission
    assert_response :success
  end

  test "should update mission" do
    patch :update, id: @mission, mission: { body: @mission.body, channel: @mission.channel, date: @mission.date, start_time: @mission.start_time, title: @mission.title }
    assert_redirected_to mission_path(assigns(:mission))
  end

end
