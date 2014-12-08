json.array!(@forecast_logs) do |forecast_log|
  json.extract! forecast_log, :id, :forecast_provider_id, :day, :temperature_max, :temperature_min, :precipitation, :pressure
  json.url forecast_log_url(forecast_log, format: :json)
end
