require 'test_helper'

class CrewRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crew_room_index_url
    assert_response :success
  end

  test "should get stores" do
    get crew_room_stores_url
    assert_response :success
  end

  test "should get sierra_hotel" do
    get crew_room_sierra_hotel_url
    assert_response :success
  end

  test "should get ready_room" do
    get crew_room_ready_room_url
    assert_response :success
  end

  test "should get service_history" do
    get crew_room_service_history_url
    assert_response :success
  end

end
