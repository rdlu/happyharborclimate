class ForecastLog < ActiveRecord::Base
  belongs_to :forecast_provider

  default_scope { where(day: (7.day.ago.to_date..Date.today)).order(day: :asc) }

  def day
    self[:day].to_date
  end
end
