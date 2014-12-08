class CreateForecastProviders < ActiveRecord::Migration
  def change
    create_table :forecast_providers do |t|
      t.string :name
      t.string :apitype
      t.text :apiparams
      t.text :provides

      t.timestamps null: false
    end
  end
end
