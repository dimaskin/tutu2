class CarriageEconomy < Carriage
  validates :up_seats, :down_seats, :side_up_seats, :side_down_seats, presence: true
  
  def type_name
    'Плацкартный'
  end
end
  