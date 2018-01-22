class CreateRailwayStations < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_stations do |t|
      t.string :name
      #t.integer :route_id

      t.timestamps
    end
  end
end
