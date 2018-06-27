class Carriage < ApplicationRecord
  belongs_to :train
  #validates :number
  before_validation :set_number

  
  private

  def update_pos
    max_pos = self.train.wagons.maximum(:pos) || 0
    self.pos = max_pos + 1
  end
end
