json.array!(@forecast_providers) do |forecast_provider|
  json.extract! forecast_provider, :id, :name, :apitype, :apiparams, :provides
  json.url forecast_provider_url(forecast_provider, format: :json)
end
