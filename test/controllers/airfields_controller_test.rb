require 'test_helper'

class AirfieldsControllerTest < ActionController::TestCase
  setup do
    @airfield = airfields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airfields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airfield" do
    assert_difference('Airfield.count') do
      post :create, airfield: { ATC_channel: @airfield.ATC_channel, ATIS_channel: @airfield.ATIS_channel, airfield_type: @airfield.airfield_type, name: @airfield.name }
    end

    assert_redirected_to airfield_path(assigns(:airfield))
  end

  test "should show airfield" do
    get :show, id: @airfield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airfield
    assert_response :success
  end

  test "should update airfield" do
    patch :update, id: @airfield, airfield: { ATC_channel: @airfield.ATC_channel, ATIS_channel: @airfield.ATIS_channel, airfield_type: @airfield.airfield_type, name: @airfield.name }
    assert_redirected_to airfield_path(assigns(:airfield))
  end

  test "should destroy airfield" do
    assert_difference('Airfield.count', -1) do
      delete :destroy, id: @airfield
    end

    assert_redirected_to airfields_path
  end
end
