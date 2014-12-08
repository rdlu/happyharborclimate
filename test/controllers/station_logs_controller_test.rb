require 'test_helper'

class StationLogsControllerTest < ActionController::TestCase
  setup do
    @station_log = station_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:station_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station_log" do
    assert_difference('StationLog.count') do
      post :create, station_log: { dewpoint: @station_log.dewpoint, humidity: @station_log.humidity, normalized_timestamp: @station_log.normalized_timestamp, precipitation: @station_log.precipitation, pressure: @station_log.pressure, station_id: @station_log.station_id, winddirection: @station_log.winddirection, windspeed: @station_log.windspeed }
    end

    assert_redirected_to station_log_path(assigns(:station_log))
  end

  test "should show station_log" do
    get :show, id: @station_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station_log
    assert_response :success
  end

  test "should update station_log" do
    patch :update, id: @station_log, station_log: { dewpoint: @station_log.dewpoint, humidity: @station_log.humidity, normalized_timestamp: @station_log.normalized_timestamp, precipitation: @station_log.precipitation, pressure: @station_log.pressure, station_id: @station_log.station_id, winddirection: @station_log.winddirection, windspeed: @station_log.windspeed }
    assert_redirected_to station_log_path(assigns(:station_log))
  end

  test "should destroy station_log" do
    assert_difference('StationLog.count', -1) do
      delete :destroy, id: @station_log
    end

    assert_redirected_to station_logs_path
  end
end
