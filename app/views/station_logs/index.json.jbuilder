json.array!(@station_logs) do |station_log|
  json.extract! station_log, :id, :station_id, :normalized_timestamp, :pressure, :windspeed, :winddirection, :humidity, :dewpoint, :precipitation
  json.url station_log_url(station_log, format: :json)
end
