class AddFioAndPassportToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :fio, :string
    add_column :tickets, :passport, :string
  end
end
