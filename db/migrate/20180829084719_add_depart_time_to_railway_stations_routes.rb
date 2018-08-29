class AddDepartTimeToRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routes, :depart_hour,   :integer
    add_column :railway_stations_routes, :depart_minute, :integer
  end
end
