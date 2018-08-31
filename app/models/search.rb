class Search < ApplicationRecord

  def search_data
    Train.includes(route: :railway_stations).where(railway_stations: { id: start_rws  }) &
    Train.includes(route: :railway_stations).where(railway_stations: { id: finish_rws })
  end

end