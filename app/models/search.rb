class Search < ApplicationRecord

  def search_routes
    #Route.joins(:railway_stations).where(railway_stations: {id:[start_rws,finish_rws]})
  end

end
