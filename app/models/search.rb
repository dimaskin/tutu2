class Search < ApplicationRecord

  def search_routes
    Route.joins(:railway_stations_route).where(railway_stations: {id:[start_rws,finish_rws]})
  end

end

#Person
#  .select('people.id, people.name, companies.name')
#  .joins(:company)
#  .find_by('people.name' => 'John') # this should be the last