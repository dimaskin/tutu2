class Carriage < ApplicationRecord
  belongs_to :train
  #validates :number
  before_validation :update_number

  scope :order_asc, -> { order('number ASC') }
  scope :order_desc, -> { order('number DESC')}
  
  private

  def update_number
    max_number = self.train.carriages.maximum(:number) || 0
    self.number = max_number + 1
  end
end
