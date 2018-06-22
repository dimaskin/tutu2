class Carriage < ApplicationRecord
  belongs_to :train
  TYPES = ['economy', 'compartment']
end
