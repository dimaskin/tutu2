class CarriageSv < Carriage
  validates :down_seats, presence: true
  
  def type_name
    'СВ'
  end
end
  