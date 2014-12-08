class CreateForecastLogs < ActiveRecord::Migration
  def change
    create_table :forecast_logs do |t|
      t.references :forecast_provider, index: true
      t.datetime :day
      t.float :temperature_max
      t.float :temperature_min
      t.float :precipitation
      t.float :pressure

      t.timestamps null: false
    end
    add_foreign_key :forecast_logs, :forecast_providers
  end
end
