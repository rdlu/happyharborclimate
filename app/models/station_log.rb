class StationLog < ActiveRecord::Base
  belongs_to :station

  default_scope { where(normalized_timestamp: (7.day.ago.to_date..Time.now)).order(normalized_timestamp: :asc, station_id: :asc) }
end
