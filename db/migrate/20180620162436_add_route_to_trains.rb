class AddRouteToTrain < ActiveRecord::Migration[5.1]
  def change
  end
end
class AddRouteToTrains < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :trains, :route
  end
end