class Search < ApplicationRecord
  def search_routes
    routes = Route.railway_stations.where(id: [1,3])
    #routes = routes.where()
  end
end
