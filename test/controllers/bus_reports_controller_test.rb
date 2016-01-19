require 'test_helper'

class BusReportsControllerTest < ActionController::TestCase
  setup do
    @bus_report = bus_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_report" do
    assert_difference('BusReport.count') do
      post :create, bus_report: { busid: @bus_report.busid, bustime: @bus_report.bustime, lat: @bus_report.lat, long: @bus_report.long, speed: @bus_report.speed }
    end

    assert_redirected_to bus_report_path(assigns(:bus_report))
  end

  test "should show bus_report" do
    get :show, id: @bus_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_report
    assert_response :success
  end

  test "should update bus_report" do
    patch :update, id: @bus_report, bus_report: { busid: @bus_report.busid, bustime: @bus_report.bustime, lat: @bus_report.lat, long: @bus_report.long, speed: @bus_report.speed }
    assert_redirected_to bus_report_path(assigns(:bus_report))
  end

  test "should destroy bus_report" do
    assert_difference('BusReport.count', -1) do
      delete :destroy, id: @bus_report
    end

    assert_redirected_to bus_reports_path
  end
end
