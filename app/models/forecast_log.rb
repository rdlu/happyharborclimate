class ForecastLog < ActiveRecord::Base
  belongs_to :forecast_provider
end
