class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :ordered, -> { includes(:railway_stations_routes).order("railway_stations_routes.position DESC") }
  
  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def get_arrive_time(route)
    [station_route(route).try(:arrive_hour), station_route(route).try(:arrive_minute)]
  end

  def update_arrive_time(route, hour, minute)
    station_route = station_route(route)
    if station_route
      station_route.update(arrive_hour:   hour) 
      station_route.update(arrive_minute: minute) 
    end
  end

  def get_depart_time(route)
    [station_route(route).try(:depart_hour),station_route(route).try(:depart_minute)]
  end

  def update_depart_time(route, hour, minute)
    station_route = station_route(route)
    if station_route
      station_route.update(depart_hour:   hour) 
      station_route.update(depart_minute: minute) 
    end
  end

  private
  def station_route(route)
    station_route = railway_stations_routes.where(route: route).first
  end
end
