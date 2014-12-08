require 'test_helper'

class ForecastLogsControllerTest < ActionController::TestCase
  setup do
    @forecast_log = forecast_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forecast_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forecast_log" do
    assert_difference('ForecastLog.count') do
      post :create, forecast_log: { day: @forecast_log.day, forecast_provider_id: @forecast_log.forecast_provider_id, precipitation: @forecast_log.precipitation, pressure: @forecast_log.pressure, temperature_max: @forecast_log.temperature_max, temperature_min: @forecast_log.temperature_min }
    end

    assert_redirected_to forecast_log_path(assigns(:forecast_log))
  end

  test "should show forecast_log" do
    get :show, id: @forecast_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forecast_log
    assert_response :success
  end

  test "should update forecast_log" do
    patch :update, id: @forecast_log, forecast_log: { day: @forecast_log.day, forecast_provider_id: @forecast_log.forecast_provider_id, precipitation: @forecast_log.precipitation, pressure: @forecast_log.pressure, temperature_max: @forecast_log.temperature_max, temperature_min: @forecast_log.temperature_min }
    assert_redirected_to forecast_log_path(assigns(:forecast_log))
  end

  test "should destroy forecast_log" do
    assert_difference('ForecastLog.count', -1) do
      delete :destroy, id: @forecast_log
    end

    assert_redirected_to forecast_logs_path
  end
end
