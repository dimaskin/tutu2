class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fio
      t.string :passport

      t.timestamps
    end
  end
end
