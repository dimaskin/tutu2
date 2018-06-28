class CarriageCompartment < Carriage
  validates :top_seats, :bottom_seats, presence: true

  def type_name
    'Купейный'
  end
end
  