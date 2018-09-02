class AddArrivetTimeToRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routes, :arrive_hour,   :integer
    add_column :railway_stations_routes, :arrive_minute, :integer
  end
end
