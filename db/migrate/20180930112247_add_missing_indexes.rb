class AddMissingIndexes < ActiveRecord::Migration[5.1]
  def change
    add_index :carriages, [:id, :type]
    add_index :tickets, :finish_station_id
    add_index :tickets, :start_station_id
    add_index :tickets, :train_id
    add_index :tickets, :user_id
    add_index :trains, :current_station_id
  end
end
