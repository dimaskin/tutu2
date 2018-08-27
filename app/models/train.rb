class Train < ApplicationRecord
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
  has_many   :tickets
  has_many   :carriages
  
  validates :number, presence: true

  def get_carriages_economy_count
    carriages.economy.count
  end
  def get_carriages_compartment_count
    carriages.compartment.count
  end
  def get_carriages_seat_count
    carriages.seat.count
  end
  def get_carriages_sv_count
    carriages.sv.count
  end
  def places_by_type(carriage_type, place_type)
    carriages.where(type: carriage_type).sum(place_type)
    #carriages.where(type: carriage_type)
    #place_type
  end
end
