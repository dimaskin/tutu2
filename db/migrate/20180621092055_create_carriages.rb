class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.string     :type_carriage
      t.integer :top_seats
      t.integer :bottom_seats
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.integer :seat_places
      t.belongs_to :train
      t.string  :type

      t.timestamps
    end
  end
end
