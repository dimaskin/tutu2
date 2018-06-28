class AddSortCarriagesColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :carriages_sort, :boolean, default: true
  end
end
