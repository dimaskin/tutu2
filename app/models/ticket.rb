class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :start_station,      class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :finish_station_id,  class_name: 'RailwayStation', foreign_key: :finish_station_id

  validates :fio, :passport, presence :true
  
end
