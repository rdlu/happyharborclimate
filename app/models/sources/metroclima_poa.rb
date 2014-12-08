class Sources::MetroclimaPoa
  def initialize
    @api_host = 'metroclima.procempa.com.br'
    @api_addr = '/dados_json.php'
    response = Net::HTTP.get_response(@api_host,@api_addr)
    json = JSON.parse(response.body)
    @raw_data = Hash.new
    json.map {|d| @raw_data[d["ID"].to_i] = d}
  end

  def results(station)
    time = Time.now
    {
      normalized_timestamp: time - (time.seconds % 1200).seconds,
      temperature: @raw_data[station]["TEMPERATURA"].gsub(',','.').to_f,
      pressure: @raw_data[station]["PRESSAO"].to_i,
      windspeed: @raw_data[station]["VENTO"].gsub(',','.').to_f,
      humidity: @raw_data[station]["UMIDADE"].gsub(',','.').to_f / 100,
      dewpoint: @raw_data[station]["PONTO_DE_ORVALHO"].gsub(',','.').to_f,
      precipitation: @raw_data[station]["CHUVA"].gsub(',','.').to_f
    }
  end

  def raw_data
    @raw_data
  end
end
