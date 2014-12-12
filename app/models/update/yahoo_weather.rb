class Update::YahooWeather
  def self.update
    sleep 10.seconds
    mclima = Sources::YahooWeather.new
    ForecastProvider.where(apitype: 'yahoo_weather').all.map {|provider|
      res = mclima.results
      log = ForecastLog.new res
      log.forecast_provider = provider
      log.save
    }
    true
  end
end
