class CreateRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_stations_routes do |t|
#      t.integer :railway_station_id
#      t.integer :route_id
      t.belongs_to :railway_station, index: true
      t.belongs_to :route, index: true
    end
  end
end
