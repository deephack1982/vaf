require 'test_helper'

class ActionReportsControllerTest < ActionController::TestCase
  setup do
    @action_report = action_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_report" do
    assert_difference('ActionReport.count') do
      post :create, action_report: { aa_kills: @action_report.aa_kills, ag_kills: @action_report.ag_kills, airframe_id: @action_report.airframe_id, hours: @action_report.hours, landings: @action_report.landings, notes: @action_report.notes, outcome: @action_report.outcome, pilot_id: @action_report.pilot_id, status: @action_report.status, takeoffs: @action_report.takeoffs, tasking_id: @action_report.tasking_id }
    end

    assert_redirected_to action_report_path(assigns(:action_report))
  end

  test "should show action_report" do
    get :show, id: @action_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_report
    assert_response :success
  end

  test "should update action_report" do
    patch :update, id: @action_report, action_report: { aa_kills: @action_report.aa_kills, ag_kills: @action_report.ag_kills, airframe_id: @action_report.airframe_id, hours: @action_report.hours, landings: @action_report.landings, notes: @action_report.notes, outcome: @action_report.outcome, pilot_id: @action_report.pilot_id, status: @action_report.status, takeoffs: @action_report.takeoffs, tasking_id: @action_report.tasking_id }
    assert_redirected_to action_report_path(assigns(:action_report))
  end

  test "should destroy action_report" do
    assert_difference('ActionReport.count', -1) do
      delete :destroy, id: @action_report
    end

    assert_redirected_to action_reports_path
  end
end
