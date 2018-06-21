class CreateRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_stations_routes do |t|
      t.belongs_to :railway_station, index: true
      t.belongs_to :route, index: true
      #t.references :railway_station, foreign_key: true
      #t.references :route, foreign_key: true
    end
  end
end
