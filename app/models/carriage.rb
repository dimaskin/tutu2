class Carriage < ApplicationRecord
  belongs_to :train

  TYPES = ['economy', 'compertment']

end
