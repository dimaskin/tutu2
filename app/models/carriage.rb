class Carriage < ApplicationRecord
  belongs_to :train
  validates :number, uniqueness: { scope: :train_id }
  before_validation :update_number
  TYPES = {
    'Купе': 'CompartmentCarriage',
    'Плацкартный': 'EconomyCarriage',
    'СВ': 'SvCarriage',
    'Сидячий': 'SeatCarriage'
  }.freeze

  scope :order_asc, -> { order('number ASC') }
  scope :order_desc, -> { order('number DESC')}

  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :compartment, -> { where(type: 'CompartmentCarriage') }
  scope :sv, -> { where(type: 'SvCarriage') }
  scope :seat, -> { where(type: 'SeatCarriage') }  

  private

  def update_number
    max_number = self.train.carriages.maximum(:number) || 0
    self.number = max_number + 1
  end
end
