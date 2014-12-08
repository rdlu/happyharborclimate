class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :lat
      t.string :lon
      t.string :apitype
      t.text :apiparams
      t.text :provides

      t.timestamps null: false
    end
  end
end
