class Search < ApplicationRecord

  def search_data
    Train.includes(route: :railway_stations).where(railway_stations: { id: start_rws  }) &
    Train.includes(route: :railway_stations).where(railway_stations: { id: finish_rws })
  end

  def get_arrive_time(route)
    "#{route.railway_stations.last.arrive_hour} : #{route.railway_stations.last.arrive_minute}" 
  end
  
    
  
  #def get_depart_hour(route)
  #  route.railway_stations.last.depart_hour
  #end
  #def get_depart_minute(route)
  #  route.railway_stations.last.depart_minute
  #end

end