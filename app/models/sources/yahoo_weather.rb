class Sources::YahooWeather
  def initialize
    @api_host = 'query.yahooapis.com'
    @api_addr = "/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20%3D%20455823%20and%20u%3D'c'&format=json&diagnostics=true&callback="
    response = Net::HTTP.get_response(@api_host,@api_addr)
    json = JSON.parse(response.body)
    @raw_data = json['query']['results']['channel']
  end

  def results
    {
      day: Date.today,
      temperature_min: @raw_data['item']['forecast'][0]['low'].to_f,
      temperature_max: @raw_data['item']['forecast'][0]['high'].to_f,
    }
  end

  def raw_data
    @raw_data
  end
end
