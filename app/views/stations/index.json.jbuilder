json.array!(@stations) do |station|
  json.extract! station, :id, :name, :lat, :lon, :apitype, :apiparams, :provides
  json.url station_url(station, format: :json)
end
