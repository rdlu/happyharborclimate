class CreateStationLogs < ActiveRecord::Migration
  def change
    create_table :station_logs do |t|
      t.references :station, index: true
      t.timestamp :normalized_timestamp
      t.float :pressure
      t.integer :windspeed
      t.string3 :winddirection
      t.float :humidity
      t.float :dewpoint
      t.float :precipitation

      t.timestamps null: false
    end
    add_foreign_key :station_logs, :stations
  end
end
