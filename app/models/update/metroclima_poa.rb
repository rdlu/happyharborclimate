class Update::MetroclimaPoa
  def update
    sleep 1.minute
    mclima = Sources::MetroclimaPoa.new
    Station.all.map {|station|
      m_id = station.apiparams['id']
      res = mclima.results m_id
      log = StationLog.new res
      log.station = station
      log.save
    }
    true
  end
end
