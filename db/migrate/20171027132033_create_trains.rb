class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.integer :number
      t.integer :current_station_id
      
      t.timestamps
    end
  end
end
