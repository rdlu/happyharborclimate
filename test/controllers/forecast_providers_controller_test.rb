require 'test_helper'

class ForecastProvidersControllerTest < ActionController::TestCase
  setup do
    @forecast_provider = forecast_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forecast_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forecast_provider" do
    assert_difference('ForecastProvider.count') do
      post :create, forecast_provider: { apiparams: @forecast_provider.apiparams, apitype: @forecast_provider.apitype, name: @forecast_provider.name, provides: @forecast_provider.provides }
    end

    assert_redirected_to forecast_provider_path(assigns(:forecast_provider))
  end

  test "should show forecast_provider" do
    get :show, id: @forecast_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forecast_provider
    assert_response :success
  end

  test "should update forecast_provider" do
    patch :update, id: @forecast_provider, forecast_provider: { apiparams: @forecast_provider.apiparams, apitype: @forecast_provider.apitype, name: @forecast_provider.name, provides: @forecast_provider.provides }
    assert_redirected_to forecast_provider_path(assigns(:forecast_provider))
  end

  test "should destroy forecast_provider" do
    assert_difference('ForecastProvider.count', -1) do
      delete :destroy, id: @forecast_provider
    end

    assert_redirected_to forecast_providers_path
  end
end
