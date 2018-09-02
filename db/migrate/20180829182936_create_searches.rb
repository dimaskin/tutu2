class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.integer :start_rws
      t.integer :finish_rws
      t.timestamps
    end
  end
end
