class Beermark < ApplicationRecord
  belongs_to :category
  belongs_to :kind
end
