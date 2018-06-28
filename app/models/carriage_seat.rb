class CarriageSeat < Carriage
  validates :seat_places, presence: true

  def type_name
    'Сидячий'
  end
end
  