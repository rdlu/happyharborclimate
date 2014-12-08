class ForecastProvider < ActiveRecord::Base
  serialize :provides, JSON
  serialize :apiparams, JSON
end
