class CarriageSv < Carriage
  validates :bottom_seats, presence: true
  
  def type_name
    'СВ'
  end
end
  