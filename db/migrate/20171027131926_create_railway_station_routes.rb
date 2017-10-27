class CreateRailwayStationRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_station_routes do |t|

      t.timestamps
    end
  end
end
