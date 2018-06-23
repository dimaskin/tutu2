class Carriage < ApplicationRecord
  belongs_to :train
  TYPES = ['economy', 'compartment', 'sv', 'seat']

  validates :number
end
