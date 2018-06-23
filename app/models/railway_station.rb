class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :ordered, -> { includes(:railway_stations_routes).order("railway_stations_routes.station_position DESC") }

end
